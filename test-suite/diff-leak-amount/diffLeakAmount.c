#include <stdio.h>
#include <string.h> 

int auth(char c){
  return c == 'a';
}

char* auth2(char* str){
  char s[2];
  s[0] = str[0];
  s[1] = str[1];
  return s;
}


int main() {
    FILE *fp;
    char* filename = "password.txt";

    //read one char from the file
    fp = fopen(filename, "r");
    char input = fgetc(fp);

    if(auth(input))
      printf("auth : YES\n");
    else
      printf("auth : NO\n");


    //read five chars from the file
    char inputs[100];
    fgets(inputs, 5, fp); 

    char *str = auth2(inputs);

    if(str != NULL)
      printf("str: %str\n",str);
    else
      printf("auth2 returns nothing.\n");

    fclose(fp);
    return 0;
}
