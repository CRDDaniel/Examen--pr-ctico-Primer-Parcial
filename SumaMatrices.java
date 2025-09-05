import java.util.Scanner;

public class SumaMatrices {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        final int n = 3;
        int[][] A = new int[n][n];
        int[][] B = new int[n][n];
        int[][] C = new int[n][n];

        System.out.println("Ingrese la primera matriz (3x3):");
        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
                A[i][j] = sc.nextInt();

        System.out.println("Ingrese la segunda matriz (3x3):");
        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
                B[i][j] = sc.nextInt();

        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
                C[i][j] = A[i][j] + B[i][j];

        System.out.println("Resultado A + B:");
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++)
                System.out.printf("%6d", C[i][j]);
            System.out.println();
        }
    }
}
