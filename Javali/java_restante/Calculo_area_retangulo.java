import java.util.Scanner;

public class Calculo_area_retangulo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Insira a altura do retangulo: ");
        int altura = sc.nextInt();
        System.out.println("Insira o comprimento da base: ");
        int base = sc.nextInt();

        System.out.printf("Base: %d\nAltura: %d\nÁrea: %d * %d = %d", base, altura, base, altura, base * altura);
    }
}
