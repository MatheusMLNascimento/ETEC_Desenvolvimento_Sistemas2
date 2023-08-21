package exercicio_java_04_08_23;

import java.util.Scanner;

public class Rect_calculator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Rectangle calculator\nInsert the base lenght:");
        float base = sc.nextFloat();
        System.out.println("Insert the height lenght:");
        float height = sc.nextFloat();

        System.out.printf("Result: %.1f * %.1f = %.1f", base, height, base * height);
    }
}
