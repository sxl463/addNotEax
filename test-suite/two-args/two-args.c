#include <stdio.h>
#include <stdlib.h>

int auth(char c1, char c2){
  return c1 == 'a';
}

int main() {
    FILE *fp;
    char* filename = "password.txt";
    char str[20];

    //read two chars from password.txt to str
    fp = fopen(filename, "r");
    fgets(str, 2, fp);

    if(auth(str[0], str[1]))
      printf("YES\n");
    else
      printf("NO\n");

    fclose(fp);
    return 0;
}
