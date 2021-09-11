#include <unistd.h>
#include <stdlib.h>

int main() {
	char *args[]={"/bin/sh",NULL};
        execvp(args[0],args);
	return 0;
}
