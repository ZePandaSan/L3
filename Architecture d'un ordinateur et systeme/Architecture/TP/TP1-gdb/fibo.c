#include <stdio.h>

int fib(int n)
{
    if (n < 2)
        return n;
    else
        return fib(n - 1) + fib(n - 2);
}

int main(int argc, char *argv[])
{
    //printf("entré=%s\n", argv[1]);
    //printf("nb d'argument : %d\n", argc);
    if (argc != 1)
    {
        int n;
        n = atoi(argv[1]);
        //printf("n=%d\n", n);
        int r=fib(n);
        printf("f(%d)=%d\n", n,r);
    }
    else {
        printf("Pas d'argument\n");
    }
    return 0;
}