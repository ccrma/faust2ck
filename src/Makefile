
CC?=cc

CFLAGS=-std=c99

CHUCK_HEADERS=chugin.h
CHUCK_HEADER_HEADERS=$(addsuffix .h,$(basename $(CHUCK_HEADERS)))

faust2ck: faust2ck.o

faust2ck.o: chuck_faust.template.h $(CHUCK_HEADER_HEADERS)

chuck_faust.template.h: chuck_faust.template.cpp
	sed  -e 's/\\/\\\\/g' -e 's/"/\\"/g' -e 's/\(.*\)/"\1",/' $< >$@

$(CHUCK_HEADER_HEADERS): %.h: cheaders/include/%.h
	sed  -e 's/\\/\\\\/g' -e 's/"/\\"/g' -e 's/\(.*\)/"\1",/' $< >$@

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf faust2ck *.o chuck_faust.template.h $(CHUCK_HEADER_HEADERS)

install: faust2ck
	cp -f faust2ck /usr/local/bin/
