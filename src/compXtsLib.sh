echo "Cleaning"
#rm lua.o 2>/dev/null
rm lxtslcdlib.o 2>/dev/null

# echo "Compilling LCD native lib"
# g++ -Wall -Wno-write-strings -fpermissive -fPIC -I . -c BridgedScreen.cpp Serial.cpp

echo "Compilling LCD lua lib"
make linux lxtslcdlib.o
#g++ -O2 -Wall -Wextra -DLUA_COMPAT_5_2 -DLUA_USE_LINUX    -c lxtslcdlib.c -o lxtslcdlib.o 

echo "Done."
ls -alh lxtslcdlib.o


echo "Continue 1"
#ar rcu liblua.a lapi.o lcode.o lctype.o ldebug.o ldo.o ldump.o lfunc.o lgc.o llex.o lmem.o lobject.o lopcodes.o lparser.o lstate.o lstring.o ltable.o ltm.o lundump.o lvm.o lzio.o lauxlib.o lbaselib.o lbitlib.o lcorolib.o ldblib.o liolib.o lmathlib.o loslib.o lstrlib.o ltablib.o lutf8lib.o loadlib.o linit.o

echo "Continue 2"
#ar rcu liblua.a lapi.o lcode.o lctype.o ldebug.o ldo.o ldump.o lfunc.o lgc.o llex.o lmem.o lobject.o lopcodes.o lparser.o lstate.o lstring.o ltable.o ltm.o lundump.o lvm.o lzio.o lauxlib.o lbaselib.o lbitlib.o lcorolib.o ldblib.o liolib.o lmathlib.o loslib.o lstrlib.o ltablib.o lutf8lib.o loadlib.o linit.o lxtslcdlib.o BridgedScreen.o Serial.o

echo "Continue 3"
#ranlib liblua.a

#gcc -std=gnu99 -O2 -Wall -Wextra -DLUA_COMPAT_5_2 -DLUA_USE_LINUX    -c -o lua.o lua.c
#gcc -std=gnu99 -o lua   lua.o liblua.a -lm -Wl,-E -ldl -lreadline  lxtslcdlib.o BridgedScreen.o Serial.o

echo "Continue 4"
#g++ -std=gnu99 -O2 -Wall -Wextra -DLUA_COMPAT_5_2 -DLUA_USE_LINUX    -c -o lua.o lua.c
#g++ -std=gnu99 -o lua lua.o lxtslcdlib.o BridgedScreen.o Serial.o liblua.a  -lm -Wl,-E -ldl -lreadline  