
#include <stdio.h>
#include <stdlib.h>

int main(){

	system("backup perform --trigger gerenciadorSala_development");

	system("git add . && git add --all && git commit -am. && git push -u rodrigo master");

	return 0;
}