import java.util.Scanner;

public class Calculo_IMC {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Bmi calculator\nInsira seu tamanho(cm): ");
        int height = sc.nextInt();
        System.out.println("Insira seu peso(Kg): ");
        float weight = sc.nextFloat();
        System.out.println("Insira seu nome: ");
        String nome = sc.next();
        System.out.println("Insira seu sexo(M ou F): ");
        String sexo = sc.next();

        int height2x = height * height;
        double average = weight / height2x;
        float average_format = (float) (average * 10000f);
        System.out.println("Seu nome é: " + nome);
        if(sexo == "M"){
            System.out.println("Seu sexo é " + sexo);
            float pesoideal = (float) (52 + (0.75 * (height - 152.4)));
            System.out.printf("\nYour BMI score: %.1f Kg/m²\n", average_format);
            System.out.printf("\nPeso ideal: %.2f Kg\n", pesoideal);
            if (average_format < 18){
                System.out.println("Your BMI indicates that you're" + "\033[0;34m under weight!");
            } else if (average_format >= 18 && average_format <= 25) {
                System.out.println("Your BMI indicates that you're" + "\033[0;32m healthy weight!");
            } else if (average_format >= 25 && average_format <= 30) {
                System.out.println("Your BMI indicates that you're" + "\033[0;35m above weight!");
            } else if (average_format >= 30 && average_format <= 40) {
                System.out.println("Your BMI indicates that you have" + "\033[0;33m moderate obesity!");
            } else if (average_format >= 40 && average_format <= 50) {
                System.out.println("Your BMI indicates that you have" + "\033[0;31m severe obesity!");
            }else{
                System.out.println("Your BMI indicates that you have" + "\033[0;37m very serious obesity!");
            }
        }else{
            System.out.println("Seu sexo é " + sexo);
            float pesoideal = (float) (52 + (0.67 * (height - 152.4)));
            System.out.printf("\nYour BMI score: %.1f Kg/m²\n", average_format);
            System.out.printf("\nPeso ideal: %.2f Kg\n", pesoideal);
            if (average_format < 18){
                System.out.println("Your BMI indicates that you're" + "\033[0;34m under weight!");
            } else if (average_format >= 18 && average_format <= 25) {
                System.out.println("Your BMI indicates that you're" + "\033[0;32m healthy weight!");
            } else if (average_format >= 25 && average_format <= 30) {
                System.out.println("Your BMI indicates that you're" + "\033[0;35m above weight!");
            } else if (average_format >= 30 && average_format <= 40) {
                System.out.println("Your BMI indicates that you have" + "\033[0;33m moderate obesity!");
            } else if (average_format >= 40 && average_format <= 50) {
                System.out.println("Your BMI indicates that you have" + "\033[0;31m severe obesity!");
            }else{
                System.out.println("Your BMI indicates that you have" + "\033[0;37m very serious obesity!");
            }
        }
    }
}