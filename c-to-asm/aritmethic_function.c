#include <stdio.h>

float tambah(float x, float y){
    return (x+y); 
}

float kurang(float x, float y){
    return (x-y); 
}

float kali(float x, float y){
    return (x*y); 
}

float bagi(float x, float y){
    return (x/y); 
}


int main(){
    int add, sub, mul;
    float dvd;
    int a = 9;
    int b = 4;
    add = tambah(a, b);
    sub = kurang(a, b);
    mul = kali(a, b);
    dvd = bagi(a, b);
    
    printf("a = %d, b = %d\n", a, b);
    printf("a + b = %d\n", add);
    printf("a - b = %d\n", sub);
    printf("a * b = %d\n", mul);
    printf("a / b = %.2f\n", dvd);
}