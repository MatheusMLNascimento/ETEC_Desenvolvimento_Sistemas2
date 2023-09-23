import java.util.Random;
import java.util.Scanner;

public class Forca {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String banco_palavras[][] = {{"a", "m", "a", "r", "e", "l", "o"}, {"a", "m", "i", "g", "a"},
                {"a","m","o","r"}, {"a","v","e"}, {"b","a","l","a","o"}, {"b","e","b","e"}, {"b","o","l","o"}, {"b","r","a","n","c","o"}};
        int vitorias = 0, derrotas = 0, acertos = 0;

        Random gerador = new Random();
        int z = gerador.nextInt(0, 8);

        System.out.println("==================" + "\nJogo da Forca\n" + "==================\n");
        for(int x = 0; x < 20; x++){
            System.out.println("Digite uma letra e tente acertar a palavra na Forca: ");
            String letra = sc.next().toLowerCase();
            for(String a : banco_palavras[z]){
                if(letra == a){
                    System.out.println("Acertou! letra certa: " + letra);
                    acertos++;
                } else {
                    System.out.println("Errou! Letra: " + a);
                }
            }
        }
        if (acertos == banco_palavras[z].length){
            System.out.println("Você ganhou!");
            vitorias++;
        } else{
            System.out.println("Que pena, perdeu!");
            derrotas++;
        }
    }
}