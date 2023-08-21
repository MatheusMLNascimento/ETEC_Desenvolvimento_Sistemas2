package Lista_vetor_04_08_23;

import java.util.Random;

public class vetor2 {
    public static void main(String[] args) {
        int[] numbers = new int[10];
        Random generator = new Random();
        for (int count = 0; count < numbers.length; count++) {
            numbers[count] = generator.nextInt(0, 11);
            System.out.println(numbers[count]);
        }
    }
}
