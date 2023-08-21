package exercicio_java_04_08_23;

import java.util.Scanner;

public class Verifica_maior_menor_10 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Insira o valor: ");
        float number = sc.nextInt();
        if(number >= 10){
            System.out.println("O número é maior que 10!");
        }else {
            System.out.println("O número é menor que 10!");
        }
    }
}
