#include <stdint.h>
#include <unistd.h> // for usleep()

#include "Serial.h"
#include "BridgedScreen.h"
static Serial serial("/dev/ttyS1");
static BridgedScreen screen( &serial );

#define CLR_PINK  8
#define CLR_GREEN 6
#define CLR_BLACK 0
#define CLR_WHITE 1


int main(int argc, char** argv) {
	
	if ( argc > 1 ) {
		screen.print( argv[1] );
		screen.print( (char*)"\n" );
	} else {
		screen.cls();
	}
	
}