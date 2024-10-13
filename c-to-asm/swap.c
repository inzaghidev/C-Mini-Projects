#include <stdio.h>

int swap(int *x, int *y) {
	int temp = *x;
	*x = *y;
	*y = temp;
}

int main() {
	int x = 5;	
	int y = 10;
	printf("%d", swap(&x, &y));
	
	return 0;
}