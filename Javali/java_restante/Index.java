import java.util.Scanner;

public class Index {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Escreva uma frase para repeti-la 10 vezes:");
        String fraseado = sc.next();

        int x = 0 ;
        while(x >= -1){
            System.out.println(fraseado);
            x++;
        }


    }
}
