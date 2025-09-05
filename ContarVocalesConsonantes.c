#include <stdio.h>
#include <ctype.h>
#include <string.h>

int main() {
    char cadena[100];
    int i, vocales = 0, consonantes = 0;
    char c;

    printf("Ingrese una cadena:\n");
    fgets(cadena, sizeof(cadena), stdin);

    for(i = 0; cadena[i] != '\0'; i++) {
        c = tolower(cadena[i]);
        if(isalpha(c)) {
            if(c=='a' || c=='e' || c=='i' || c=='o' || c=='u')
                vocales++;
            else
                consonantes++;
        }
    }

    printf("Vocales: %d\n", vocales);
    printf("Consonantes: %d\n", consonantes);

    return 0;
}
