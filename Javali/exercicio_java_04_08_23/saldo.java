package exercicio_java_04_08_23;

import java.util.Scanner;

public class saldo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Economy calculator\nInsert the number account:");
        int account_number = sc.nextInt();

        System.out.println("Insert the balance:");
        float balance = sc.nextFloat();
        System.out.println("Insert the credit spent:");
        float credit = sc.nextFloat();
        System.out.println("Insert the debt spent:");
        float debit = sc.nextFloat();

        float actual_balance = balance - debit + credit;
        System.out.printf("\nAccount number: %d\nYour actual balance is: $%.2f", account_number, actual_balance);
        if(actual_balance >= 0){
            System.out.println("\nYour balance is \033[0;32mpositive!");
        }else{
            System.out.println("\nYour balance is \033[0;32mnegative!");
        }

    }
}
