package Herança2.hipotenusa;

import javax.swing.*;

import static java.lang.Double.parseDouble;

public class geometrias_main {
    public static void main(String[] args) {
        int escolha = Integer.parseInt(JOptionPane.showInputDialog("Escolha se quer registrar seno(1) ou cosseno(2) da hipotenusa: "));

        switch (escolha){
            case 1:
                double hipotenusa = parseDouble(JOptionPane.showInputDialog("Qual o valor da hipotenusa?"));
                double catOposto = parseDouble(JOptionPane.showInputDialog("Qual o valor do cateto oposto?"));

                seno sen = new seno(hipotenusa);
                sen.catOposto = catOposto;

                sen.calcularCosseno(hipotenusa, catOposto);
                break;
            case 2:
                hipotenusa = parseDouble(JOptionPane.showInputDialog("Qual o valor da hipotenusa?"));
                double catAdjacente = parseDouble(JOptionPane.showInputDialog("Qual o valor do cateto adjacente?"));

                cosseno cos = new cosseno(hipotenusa);
                cos.catAdjacente = catAdjacente;

                cos.calcularCosseno(hipotenusa, catAdjacente);
                break;
        }
    }
}
