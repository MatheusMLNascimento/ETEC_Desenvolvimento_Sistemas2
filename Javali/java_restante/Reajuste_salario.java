import java.util.Scanner;

public class Reajuste_salario {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Insira o salario mensal atual do funcionário para calculo de reajuste: ");
        float salario = sc.nextFloat();

        System.out.println("Percentual de reajuste: ");
        int reajuste = sc.nextInt();
        float percentual_reajuste = reajuste / 100;
        float novo_salario = salario * percentual_reajuste;

        if(salario < 1200.00){
            System.out.printf("Novo salario (pós reajuste de %d): %d", reajuste, salario + novo_salario);
        }else{
            System.out.printf("Novo salario (pós reajuste de %d): %d", reajuste, salario * novo_salario);
        }


    }
}
