package exercicio_java_04_08_23;

import java.util.Scanner;

public class wage_adjustment {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Insert the worker wage:");
        float wage = sc.nextFloat();
        System.out.println("Insert the percentage of adjustment:");
        float percentage = sc.nextInt();
        percentage /= 100;
        int adjustment = (int) (percentage * wage);

        System.out.println("Will increase or decrease the wage:\n1 - Increase\n2 - Decrease");
        int chose = sc.nextInt();
        switch(chose){
            case 1:
                System.out.printf("""
                        Chose: Increase
                        New wage after increase: %.2f $
                        Percentage: %.0f
                        Increase amount: %d""", (wage + adjustment), percentage * 100, adjustment);
                break;

            case 2:
                System.out.printf("""
                        Chose: Decrease
                        New wage after increase: %.2f $
                        Percentage: %.0f
                        Increase amount: %d""", (wage - adjustment), percentage * 100, adjustment);
                break;
        }
    }
}
