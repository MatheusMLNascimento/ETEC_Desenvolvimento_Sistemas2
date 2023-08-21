import java.util.Scanner;

public class Calculadora {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Calculadora 3000\nSelecione uma operação:\n1 - multiplicação\n2 - divisão\n3 - soma\n4 - subtração");
        int escolha = sc.nextInt();

        switch (escolha){
            case 1:
                System.out.println("Multiplicação: ");
                int a = sc.nextInt();
                int b = sc.nextInt();
                System.out.printf("%d x %d = %d", a, b, a * b);
                break;

            case 2:
                System.out.println("Divisão: ");
                a = sc.nextInt();
                b = sc.nextInt();
                System.out.printf("%d / %d = %d", a, b, a / b);
                break;

            case 3:
                System.out.println("Soma: ");
                a = sc.nextInt();
                b = sc.nextInt();
                System.out.printf("%d + %d = %d", a, b, a + b);
                break;
        }

    }
}
