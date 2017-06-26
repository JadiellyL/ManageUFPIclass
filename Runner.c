
#include <stdio.h>
#include <stdlib.h>

int main(){

	while(1==1){

	system("backup perform --trigger gerenciadorSala_development");

	printf("Making backup....\n\n");

	system("cd /home/aluno/backups/gerenciadorSala_development/ && git add . && git add --all && git commit -am. && git push -u rodrigo master");

	sleep(1);

	}

	return 0;
}