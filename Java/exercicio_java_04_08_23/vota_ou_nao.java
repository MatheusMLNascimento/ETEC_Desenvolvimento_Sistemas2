package exercicio_java_04_08_23;

import java.util.Date;
import java.util.Scanner;

public class vota_ou_nao {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Date date = new Date();
        int year = date.getYear() + 1900;
        System.out.println("Insert your birth year:");
        int birth = year - sc.nextInt();
        if(birth >= 18){
            System.out.println("You \033[0;32mcan vote, go save our country!");
        }else{
            System.out.println("You \033[0;31mcan't vote, \033[0;32mgo study buddy! ;)");
        }

    }
}
