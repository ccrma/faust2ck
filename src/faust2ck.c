
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *chuck_faust_template[] = {
#include "chuck_faust.template.h"
NULL
};

char *ctrl_cget_query[] = {"\n\
    QUERY->add_mfun( QUERY, %dsp_name%_cget_%var_name% , \"float\", \"%var_label%\" );\n\
    \n\
    QUERY->add_mfun( QUERY, %dsp_name%_ctrl_%var_name% , \"float\", \"%var_label%\" );\n\
    QUERY->add_arg( QUERY, \"float\", \"%var_label%\" );\n\
    ",
    NULL
};

char *ctrl_cget_funcs[] = {
"CK_DLL_MFUN(%dsp_name%_ctrl_%var_name%)\n\
{\n\
    %dsp_name% *d = (%dsp_name%*)OBJ_MEMBER_UINT(SELF, %dsp_name%_offset_data);\n\
    d->%var_name% = (SAMPLE)GET_CK_FLOAT(ARGS);\n\
    RETURN->v_float = (t_CKFLOAT)(d->%var_name%);\n\
}\n\
\n\
CK_DLL_MFUN(%dsp_name%_cget_%var_name%)\n\
{\n\
    %dsp_name% *d = (%dsp_name%*)OBJ_MEMBER_UINT(SELF, %dsp_name%_offset_data);\n\
    RETURN->v_float = (t_CKFLOAT)(d->%var_name%);\n\
}\n\
\n",
    NULL
};

// built-in chuck headers
char *chuck_dl_h[] = {
#include "chuck_dl_h.h"
    NULL
};
char *chuck_oo_h[] = {
#include "chuck_oo_h.h"
    NULL
};
char *chuck_def_h[] = {
#include "chuck_def_h.h"
    NULL
};
char *util_thread_h[] = {
#include "util_thread_h.h"
    NULL
};


typedef struct _variable_t
{
    char name[256];
    char label[256];
    struct _variable_t *next;
} variable_t;

variable_t variables;
variable_t *current_v = &variables;
FILE *out = 0;
char dspname[256] = "mydsp";
int in_widget = 0;
char outfilename[2048];

void strip(char *to, char *from, int quotes, int replace_spaces)
{
    int i=0, j=0;
    while (from[i] && (from[i]==' ' || from[i]=='\t'
                       || (from[i]=='"' && quotes)))
        i++;
    while (from[i]) {
        if (replace_spaces && from[i]==' ')
            to[j++] = '_';
        else
            to[j++] = from[i];
        i++;
    }
    j--;
    while (j>0 && (to[j]==' ' || to[j]=='\t'
                   || (to[j]=='"' && quotes)
                   || (to[j]=='_' && replace_spaces) ))
        to[j--] = 0;
}

void on_beg_tag(char *name)
{
    /* TODO: here would be a good place for parsing attributes if we
     * were interested in doing so. */

    if (strncmp(name, "widget", 6)==0) {
        if (name[6]!=0 && name[6]!=' ')
            return;
        current_v->next = malloc(sizeof(variable_t));
        current_v = current_v->next;
        current_v->next = 0;
        in_widget = 1;
    }
}

void on_end_tag(char *name, char *value)
{
    if (strcmp(name, "widget")==0) {
        in_widget = 0;
    }

    else if (strcmp(name, "varname")==0 && in_widget) {
        strip(current_v->name, value, 1, 1);
    }

    else if (strcmp(name, "label")==0 && in_widget) {
        strip(current_v->label, value, 1, 1);
    }

    else if (strcmp(name, "name")==0) {
        strip(dspname, value, 1, 1);
    }
}

/*
 * See the technical section of README for an explanation of this insanity.
 */

int parseXml(FILE* f)
{
    typedef enum 
    {
        in_open_tag,
        in_close_tag,
        in_text,
    } state_t;

    typedef struct
    {
        int pos;
        char buf[2048];
        int no_text;
    } stack_frame;

    int line = 1;

    state_t state = in_text;

    char c = 0, last_c = 0;
    stack_frame stack[50];

    int level=0;

    while (!feof(f))
    {
        last_c = c;
        c = fgetc(f);

        if (c=='\r' || c=='\n') {
            if (last_c!='\r' && last_c!='\n')
                line++;
            continue;
        }

        switch (state)
        {
        case in_open_tag:
            if (c == '>') {
                on_beg_tag(stack[level].buf);
                state = in_text;
                if (stack[level].no_text) {
                    level --;
                    continue;
                }
                level ++;
                stack[level].pos = 0;
                stack[level].buf[0] = 0;
                continue;
            }
            if (c == '/' && last_c == '<') {
                state = in_close_tag;
                continue;
            }
            if (c == '/') {
                stack[level].no_text = 1; // empty tag
                continue;
            }
            stack[level].buf[stack[level].pos++] = c;
            stack[level].buf[stack[level].pos] = 0;
            break;
        case in_close_tag:
            if (c == '>') {
                state = in_text;
                if (strncmp(stack[level].buf, stack[level-2].buf,
                            strlen(stack[level].buf))!=0) {
                    printf("Error with '%s', line %d\n",
                           stack[level].buf, line);
                    return -1;
                }
                level -= 3;
                on_end_tag(stack[level+3].buf, stack[level+2].buf);
                continue;
            }
            stack[level].buf[stack[level].pos++] = c; 
            stack[level].buf[stack[level].pos] = 0;
            break;
        case in_text:
            if (c == '<') {
                state = in_open_tag;
                level ++;
                stack[level].pos = 0;
                stack[level].buf[0] = 0;
                stack[level].no_text = 0;
                continue;
            }
            stack[level].buf[stack[level].pos++] = c;
            stack[level].buf[stack[level].pos] = 0;
            break;
        }
    }

    return 0;
}

void do_template(char *template[]);

int on_replace(char *var)
{
    if (strcmp(var, "dsp_name")==0) {
        fprintf(out, dspname);
    }
    else if (strcmp(var, "var_name")==0) {
        fprintf(out, current_v->name);
    }
    else if (strcmp(var, "var_label")==0) {
        fprintf(out, current_v->label);
    }
    else if (strcmp(var, "ctrl_cget_functions")==0) {
        variable_t *v = variables.next;
        while (v) {
            current_v = v;
            do_template(ctrl_cget_funcs);
            v = v->next;
        }
    }
    else if (strcmp(var, "ctrl_cget_query")==0) {
        variable_t *v = variables.next;
        while (v) {
            current_v = v;
            do_template(ctrl_cget_query);
            v = v->next;
        }
    }
    else
        return 1;
    return 0;
}

void do_template(char *template[])
{
    int line, pos, k, i;
    char str[256];
    line = 0;
    while (template[line])
    {
        int len = strlen(template[line]);
        for (pos=0; pos < len; pos++) {
            char c = template[line][pos];
            if (c == '%') {
                k = 0;
                i = pos;
                pos++;
                while (template[line][pos] && template[line][pos]!='%')
                    str[k++] = template[line][pos++];
                str[k] = 0;
                if (on_replace(str)) {
                    fprintf(out,"%%");
                    pos = i;
                }
            }
            else
                fprintf(out,"%c", template[line][pos]);
        }
        fprintf(out,"\n");
        line++;
    }
}

int write_header(char *filename, char *lines[])
{
    FILE * file = NULL;
    int r = 0;
    
    file = fopen(filename, "w");
    if(file == NULL)
        goto error;
    
    for(int i = 0; lines[i] != NULL; i++)
    {
        if(fprintf(file, "%s\n", lines[i]) < 0)
            goto error;
    }
    
    r = 1;
    
error:
    
    if(file)
        fclose(file);
    
    return r;
}

int main(int argc, char *argv[])
{
    int i, rc=0;
    FILE *fxml = 0;
#define BUF_SIZE 1024
    char cmd[BUF_SIZE];
    char xmlfilepath[BUF_SIZE];
    char *dspfilename;
    char basename[BUF_SIZE];
    int result = 0;
    out = stdout;
    
    if (argc != 2) {
        printf("Usage: faust2ck <filename.dsp>\n");
        rc = 1;
        goto error;
    }
    
    system("rm -rf .faust2ck_tmp");

    snprintf(cmd, BUF_SIZE, "mkdir .faust2ck_tmp");
    //printf("%s\n", cmd);
    result = system(cmd);
    if(result != 0)
    {
        fprintf(stderr, "error: unable to make temporary work directory\n");
        rc = 5;
        goto error;
    }
    
    snprintf(cmd, BUF_SIZE, "cp '%s' .faust2ck_tmp/", argv[1]);
    //printf("%s\n", cmd);
    result = system(cmd);
    if(result != 0)
    {
        fprintf(stderr, "error: unable to copy .dsp file to temporary work directory\n");
        rc = 5;
        goto error;
    }
    
    if(!write_header(".faust2ck_tmp/chuck_dl.h", chuck_dl_h))
    {
        fprintf(stderr, "error: unable to write ChucK header file to temporary work directory\n");
        rc = 5;
        goto error;
    }
    
    if(!write_header(".faust2ck_tmp/chuck_def.h", chuck_def_h))
    {
        fprintf(stderr, "error: unable to write ChucK header file to temporary work directory\n");
        rc = 5;
        goto error;
    }
    
    if(!write_header(".faust2ck_tmp/chuck_oo.h", chuck_oo_h))
    {
        fprintf(stderr, "error: unable to write ChucK header file to temporary work directory\n");
        rc = 5;
        goto error;
    }
    
    if(!write_header(".faust2ck_tmp/util_thread.h", util_thread_h))
    {
        fprintf(stderr, "error: unable to write ChucK header file to temporary work directory\n");
        rc = 5;
        goto error;
    }
    
    dspfilename = strrchr(argv[1], '/');
    if(dspfilename == NULL) // '/' not found
        dspfilename = argv[1];
    else
        dspfilename = dspfilename+1;
    if(strrchr(dspfilename, '.') == NULL) // '.' not found
        strncpy(basename, dspfilename, BUF_SIZE);
    else
    {
        int basenamelen = strrchr(dspfilename, '.') - dspfilename;
        strncpy(basename, dspfilename, basenamelen);
        basename[basenamelen] = '\0';
    }
    
    snprintf(cmd, BUF_SIZE, "faust -xml '.faust2ck_tmp/%s' > /dev/null", dspfilename);
    //printf("%s\n", cmd);
    result = system(cmd);
    if(result != 0)
    {
        fprintf(stderr, "error: unable to generate XML file\n");
        rc = 5;
        goto error;
    }
    
    snprintf(xmlfilepath, BUF_SIZE, ".faust2ck_tmp/%s.xml", dspfilename);
    
    fxml = fopen(xmlfilepath, "r");

    if (!fxml) {
        printf("Error: Could not open %s.\n", argv[1]);
        rc = 2;
        goto error;
    }

    if (parseXml(fxml)) {
        printf("Error parsing XML in %s\n", argv[1]);
        rc = 3;
        goto error;
    }

    fclose(fxml);
    fxml = 0;

    // determine output file name
    strcpy(outfilename, xmlfilepath);
    i=strlen(outfilename)-1;
    while (i>0 && outfilename[i]!='.')
        i--;
    if (i==0) i=strlen(outfilename);
    strcpy(&outfilename[i], "-wrapper.cpp");

    out = fopen(outfilename, "w");
    if (!out) {
        printf("Could not open output file %s\n", outfilename);
        rc = 4;
        goto error;
    }

    do_template(chuck_faust_template);
    
    fclose(out);
    
    snprintf(cmd, BUF_SIZE, "faust -a '%s' -o '.faust2ck_tmp/%s.cpp' '.faust2ck_tmp/%s'",
             outfilename, dspfilename, dspfilename);
    //printf("%s\n", cmd);
    result = system(cmd);
    if(result != 0)
    {
        fprintf(stderr, "error: unable to generate .cpp file\n");
        rc = 5;
        goto error;
    }

#ifdef __APPLE__
    snprintf(cmd, BUF_SIZE, "clang++ -D__MACOSX_CORE__ -I.faust2ck_tmp -arch i386 -arch x86_64 -shared -lstdc++ -o '%s.chug' '.faust2ck_tmp/%s.cpp'",
             basename, dspfilename);
    //printf("%s\n", cmd);
    result = system(cmd);
    if(result != 0)
    {
        fprintf(stderr, "error: unable to compile .cpp file\n");
        rc = 5;
        goto error;
    }
    
#endif
    
error:
    
    system("rm -rf .faust2ck_tmp");
    
    if (fxml)
        fclose(fxml);

    if (out && out!=stdout)
        fclose(out);

    variable_t *v = variables.next;
    while (v) {
        variable_t *t = v->next;
        free(v);
        v = t;
    }

    return rc;
}
