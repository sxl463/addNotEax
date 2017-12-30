#include <stdio.h>
#include <string.h> 


int auth(char c){
  return c == 'a';
}


int main() {
    FILE *fp;
    char* filename = "password.txt";

    fp = fopen(filename, "r");
    char input = fgetc(fp);//read a char from the file

    if(auth(input))
      printf("YES\n");
    else
      printf("NO\n");

    fclose(fp);
    return 0;
}




/*
    while (fgetc(fp) != NULL){
        printf("password in auth.txt: %s", str);
	printf("input string: %s\n", input);

	if (auth(str, input) == 0){
	  printf("auth succeeded!\n");
	}
	else
	  printf("%s\n", str);
    }
*/
