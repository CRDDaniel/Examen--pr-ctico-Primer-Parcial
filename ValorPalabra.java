import java.util.Scanner;

public class ValorPalabra {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int total;

        do {
            total = 0;
            System.out.println("Ingrese una palabra:");
            String palabra = sc.nextLine();

            for (int i = 0; i < palabra.length(); i++) {
                char c = Character.toLowerCase(palabra.charAt(i));
                if (c >= 'a' && c <= 'z')
                    total += (c - 'a' + 1);
            }

            System.out.println("Valor de la palabra: " + total);
        } while (total != 100);

        System.out.println("Programa finalizado (palabra con 100 puntos).");
    }
}
