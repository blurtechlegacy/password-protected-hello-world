#include <iostream>
#include <cstring>
#define _CRT_SECURE_NO_WARNINGS
using namespace std;

int main()
{
    char pass[20];
    printf("Enter password:");
    cin>>pass;
    if (strcmp(pass,"1234")==0){ 
    cout<<"Hello World";
    }
    else{ cout<<"Incorrect password";
    }
    return 0;
}

