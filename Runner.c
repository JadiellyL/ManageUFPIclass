
#include <stdio.h>
#include <stdlib.h>

int main(){

	while(1==1){

	system("backup perform --trigger gerenciadorSala_development");

	system("git add . && git add --all && git commit -am. && git push -u rodrigo master");

	sleep(1000);

	}

	return 0;
}