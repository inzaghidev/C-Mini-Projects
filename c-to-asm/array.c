#include <stdio.h>

int main() {
	int x[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
	x[0] = 5;
	
	printf("%d\n", x[0]);
	printf("%d\n", x[6]);
	
	int length = sizeof(x)/sizeof(x[0]);    
    for (int i = 0; i < length; i++) {     
        printf("%d ", x[i]);     
    }     
}