package exercicio_java_04_08_23;

import java.util.Scanner;

public class actual_storage {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Insert the actual storage:");
        int actual_storage = sc.nextInt();
        System.out.println("Now the max storage:");
        int max_storage = sc.nextInt();
        System.out.println("Now the minimum storage:");
        int min_storage = sc.nextInt();

        int average_storage = (max_storage + min_storage) / 2;
        if (actual_storage >= average_storage){
            System.out.println("\033[0;31mDon't buy!");
        }else{
            System.out.println("\033[0;32mBuy it!");
        }
    }
}
