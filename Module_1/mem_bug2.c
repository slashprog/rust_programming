#include <stdio.h>
#include <stdlib.h>

int main() 
{
    int *ptr = (int *) malloc(sizeof(int));
    int *ptr2;

    *ptr = 42;
    free(ptr);

    ptr2 = (int *) malloc(sizeof(int));
    *ptr2 = 24;

    printf("Value of ptr2: %d\n", *ptr2); // OK
    getchar();
    
    *ptr = 100;

    printf("Value of ptr2: %d\n", *ptr2); 

    getchar();

    return 0;
}