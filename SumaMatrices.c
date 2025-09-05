#include <stdio.h>

#define N 3

int main() {
    int A[N][N], B[N][N], C[N][N];
    int i, j;

    printf("Ingrese la primera matriz (3x3):\n");
    for (i = 0; i < N; i++)
        for (j = 0; j < N; j++)
            scanf("%d", &A[i][j]);

    printf("Ingrese la segunda matriz (3x3):\n");
    for (i = 0; i < N; i++)
        for (j = 0; j < N; j++)
            scanf("%d", &B[i][j]);

    for (i = 0; i < N; i++)
        for (j = 0; j < N; j++)
            C[i][j] = A[i][j] + B[i][j];

    printf("Resultado A + B:\n");
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++)
            printf("%6d", C[i][j]);
        printf("\n");
    }
    return 0;
}
