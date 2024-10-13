#include <stdio.h>
#include <math.h>

int main() {
    printf("Program Barisan & Deret Geometri\n");
    printf("================================\n\n");

    double a, r, Sn;
    int n;
    
    // Input nilai awal, rasio, dan banyaknya suku
    printf("Masukkan Suku Awal (a) : ");
    scanf("%lf", &a);  // Menggunakan scanf untuk input di C
    printf("Masukkan Rasio (r) : ");
    scanf("%lf", &r);
    printf("Masukkan Banyak Suku (n) : ");
    scanf("%d", &n);
    printf("\n");

    // Menampilkan Barisan Geometri
    printf("Barisan Geometri:\n");
    for(int i = 0; i < n; i++) {
        double Un = a * pow(r, i);  // Menghitung suku ke-i (U_n)
        printf("%lf ", Un);
    }

    // Menghitung Jumlah Deret Geometri
    if(r != 1) {
        Sn = a * (1 - pow(r, n)) / (1 - r);
    } else {
        Sn = a * n;
    }

    printf("\nDeret Geometri (Jumlah S_n): %lf\n", Sn);

    return 0;
}