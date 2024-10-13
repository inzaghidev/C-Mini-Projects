#include <stdio.h>

int main() {
    printf("Program Barisan Deret Aritmatika\n");
    printf("================================\n\n");

    int a, b, n, i, hasil;

    printf("Masukan Suku Awal : ");
    scanf("%d", &a);
    printf("Masukan Banyak Suku : ");
    scanf("%d", &n);
    printf("Masukan Beda : ");
    scanf("%d", &b);
    printf("\n");

    printf("Barisan Aritmatika : \n");
    for (i = 0; i < n; i++) {
        printf("%d ", a + (i * b));
    }
    printf("\nDeret Aritmatika : %d\n", (2 * a + (n - 1) * b) * n / 2);

    return 0;
}