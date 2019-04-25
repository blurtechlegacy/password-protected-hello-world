#include <stdio.h>
#define _CRT_SECURE_NO_WARNINGS

int main()
{
    int pass;
    printf("Enter password:");
    scanf("%d", &pass);
    if (pass = 1234){ 
    printf("Hello World");
    }
    else{ printf("Incorrect password");
    }
    return 0;
}
