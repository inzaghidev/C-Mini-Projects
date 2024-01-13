#include <stdio.h>

int ack(int m, int n){
    if (m == 0){
        return n + 1;
    }
    else if((m > 0) && (n == 0)){
        return ack(m - 1, 1);
    }
    else if((m > 0) && (n > 0)){
        return ack(m - 1, ack(m, n - 1));
    }
    else {
        return ack(m, n);
    }
}

int main(){
    int x, y, A;
    
    printf("Ackermann Function A(x, y)\n");
    printf("Insert value of x : ");
    scanf("%d", &x);
    printf("Insert value of y : ");
    scanf("%d", &y);

    A = ack(x, y);

    printf("A(%d, %d) = %d", x, y, A);
    
    return 0;
}