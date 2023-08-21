package exercicio_java_04_08_23;

import java.util.Scanner;

public class IMC {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("BMI calculator\nInsert your height(cm):");
        int height = sc.nextInt();
        System.out.println("Insert your weight(kg):");
        float weight = sc.nextFloat();
        System.out.println("Insert your name:");
        String name = sc.next();
        System.out.println("Insert your gender(F or M only):");
        String gender = sc.next();

        /*Masculino: PesoIdeal = 52 + (0.75 × (altura - 152.4)
          Feminino: PesoIdeal = 52 + (0.67 × (altura - 152.4)*/

        int height2x = height * height;
        double average = weight / height2x;
        float average_format = (float) (average * 10000f);
        if (gender.equals("M")) {
            float ideal_weight = (float) (52 + (0.75 * (height - 152.4)));
            System.out.printf("Your ideal weight is: %.2f Kg", ideal_weight);
            System.out.printf("\nYour BMI score: %.1f Kg/m²\n", average_format);
            if (average_format < 18) {
                System.out.println("Your BMI indicates that you're" + "\033[0;34m under weight!");
            } else if (average_format >= 18 && average_format < 25) {
                System.out.println("Your BMI indicates that you're" + "\033[0;32m healthy weight!");
            } else if (average_format >= 25 && average_format <= 30) {
                System.out.println("Your BMI indicates that you're" + "\033[0;35m above weight!");
            } else if (average_format >= 30 && average_format <= 40) {
                System.out.println("Your BMI indicates that you have" + "\033[0;33m moderate obesity!");
            } else if (average_format >= 40 && average_format <= 50) {
                System.out.println("Your BMI indicates that you have" + "\033[0;31m severe obesity!");
            } else {
                System.out.println("Your BMI indicates that you have" + "\033[0;37m very serious obesity!");
            }
        } else {
            float ideal_weight = (float) (52 + (0.67 * (height - 152.4)));
            System.out.printf("Your ideal weight is: %.2f Kg", ideal_weight);
            System.out.printf("\nYour BMI score: %.1f Kg/m²\n", average_format);
            if (average_format < 18) {
                System.out.println("Your BMI indicates that you're" + "\033[0;34m under weight!");
            } else if (average_format >= 18 && average_format < 25) {
                System.out.println("Your BMI indicates that you're" + "\033[0;32m healthy weight!");
            } else if (average_format >= 25 && average_format <= 30) {
                System.out.println("Your BMI indicates that you're" + "\033[0;35m above weight!");
            } else if (average_format >= 30 && average_format <= 40) {
                System.out.println("Your BMI indicates that you have" + "\033[0;33m moderate obesity!");
            } else if (average_format >= 40 && average_format <= 50) {
                System.out.println("Your BMI indicates that you have" + "\033[0;31m severe obesity!");
            } else {
                System.out.println("Your BMI indicates that you have" + "\033[0;37m very serious obesity!");
            }
        }
    }
}
