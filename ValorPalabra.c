#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main() {
    char palabra[100];
    int i, total;

    do {
        total = 0;
        printf("Ingrese una palabra:\n");
        scanf("%s", palabra);

        for(i = 0; i < strlen(palabra); i++) {
            char c = tolower(palabra[i]);
            if(c >= 'a' && c <= 'z')
                total += (c - 'a' + 1);
        }

        printf("Valor de la palabra: %d\n", total);
    } while(total != 100);

    printf("Programa finalizado (palabra con 100 puntos).\n");
    return 0;
}
