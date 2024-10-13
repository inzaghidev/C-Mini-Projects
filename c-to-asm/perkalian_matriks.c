#include <stdio.h>

int main() {
    int matriks1[10][10], matriks2[10][10], hasil[10][10];
    int i, j, k, m, n, jumlah = 0;
    
    printf("Program Perkalian Matriks m x n\n");
    printf("Masukkan jumlah Baris Matriks : ");
    scanf("%d",&m);
    printf("Masukkan jumlah Kolom Matriks : ");
    scanf("%d",&n);
    
    if(n != m){
        printf("Matriks tidak dapat dikalikan satu sama lain.\n");
    }
    else {
        printf("Masukkan Elemen Matriks Pertama : \n");
        for(i = 0; i < m; i++){
            for(j = 0; j < n; j++){
                scanf("%d", &matriks1[i][j]);
            }
        }
        
        printf("Masukkan Elemen Matriks Kedua : \n");
        for(i = 0; i < m; i++){
            for(j = 0; j < n; j++){
                scanf("%d", &matriks2[i][j]);
            }
        }
        
        for(i = 0; i < m; i++){
            for(j = 0; j < n; j++){
                for(k = 0; k < m; k++){
                    jumlah = jumlah + matriks1[i][k] * matriks2[k][j];
                }
                hasil[i][j] = jumlah;
                jumlah = 0;
            }
        }
        
        printf("Hasil Perkalian Matriks : \n");
        for(i = 0; i < m; i++){
            for(j = 0; j < n; j++){
                printf("%d\t", hasil[i][j]);
            }
            printf("\n");
        }
    }
    
    return 0;
}