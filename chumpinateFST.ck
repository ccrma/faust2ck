@import "Chumpinate"

Package pkg("Faust2chuck");

// add our metadata here
"Grame-CNCM" => pkg.authors;

"https://github.com/ccrma/faust2ck" => pkg.homepage;
"https://github.com/ccrma/faust2ck" => pkg.repository;

"Faust examples as Chugins for ChucK: https://faustdoc.grame.fr/examples  we have not fully tested them yet, use at you own risk." => pkg.description;
"GNU GPLv2.1" => pkg.license;

["Faust", "UGen", "a lot of stuff", "DSPs and other efxs"] => pkg.keywords;

"./" => pkg.generatePackageDefinition;

PackageVersion ver("Faust2chuck", "0.1.0");

"1.5.2.5" => ver.languageVersionMin;

if(Machine.os() == "linux") {
    "linux" => ver.os;
    "x86_64" => ver.arch;
} else if(Machine.os() == "mac") {
    "mac" => ver.os;
    "universal" => ver.arch;
} else if(Machine.os() == "windows") {
    "windows" => ver.os;
    "x86_64" => ver.arch;
} else {
    <<< "Unknown OS" >>>;
}

FileIO fio;
fio.open( me.dir() + "builds", FileIO.READ );
fio.dirList() @=> string names[];

for (0 => int i; i < names.size(); i++) {
    ver.addFile(me.dir() + "builds/" + names[i] + "/" + names[i] + ".chug");
    ver.addExampleFile(me.dir() + "builds/" + names[i] + "/_examples/" + names[i] + "-test.ck");
}

if(Machine.os() == "linux") {
    ver.generateVersion("./", "Faust2chuck-linux", "https://ccrma.stanford.edu/~celeste/chump/faust2ck/0.1.0/Faust2chuck-linux.zip");
    ver.generateVersionDefinition("Faust2chuck_linux", "./");
} else if(Machine.os() == "mac") {
    ver.generateVersion("./", "Faust2chuck-mac", "https://ccrma.stanford.edu/~celeste/chump/faust2ck/0.1.0/Faust2chuck-mac.zip");
    ver.generateVersionDefinition("Faust2chuck_max", "./");
} else if(Machine.os() == "windows") {
    ver.generateVersion("./", "Faust2chuck-win", "https://ccrma.stanford.edu/~celeste/chump/faust2ck/0.1.0/Faust2chuck-win.zip");
    ver.generateVersionDefinition("Faust2chuck_win", "./");
} else {
    <<< "Unknown OS" >>>;
}