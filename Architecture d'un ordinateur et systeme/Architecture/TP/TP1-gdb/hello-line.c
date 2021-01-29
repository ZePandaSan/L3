#include <stdio.h>

int main(int argc, char *argv[])
{
    printf("Hello, World!\n");
    //printf("entré=%s\n",argv[1]);
    //printf("nb d'argument : %d\n", argc);
    if (argc!=1){
        int n;
        n=atoi(argv[1]);
        //printf("n=%d\n", n);
        for (int i=0; i<n; i++){
            printf("#");
        }
    }
    printf("\n");
    return 0;
}