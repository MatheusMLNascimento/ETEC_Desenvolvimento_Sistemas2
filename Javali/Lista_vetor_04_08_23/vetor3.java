package Lista_vetor_04_08_23;

import java.util.Scanner;

public class vetor3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Insira 9 entradas:");
        int matriz[][] = new int[3][3];
        for (int count = 0; count < 3; count++) {
            for(int y = 0; y < 3; y++){
                matriz[count][y] = sc.nextInt();
            }
        }

        for (int count = 0; count < 3; count++) {
            for(int y = 0; y < 3; y++){
                System.out.printf("%d;%d - %d\n", count+1, y+1,matriz[count][y]);
            }
        }
    }
}
