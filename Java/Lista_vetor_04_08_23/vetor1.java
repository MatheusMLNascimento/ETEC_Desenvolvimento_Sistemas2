package Lista_vetor_04_08_23;

import java.util.Random;

public class vetor1 {
    public static void main(String[] args) {
        int[] numbers = new int[15];
        Random generator = new Random();
        for (int count = 0; count < numbers.length; count++) {
            numbers[count] = generator.nextInt(0, 31);
            if (numbers[count] % 2 == 1) {
                System.out.println((count+1) + " - " + numbers[count]);
            }
        }
    }
}
