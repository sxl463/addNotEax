#include <stdio.h>
#include <string.h> 


int auth(char c){
  if(c == 'd')
    return 1;
  else
    return auth(c+1);
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

