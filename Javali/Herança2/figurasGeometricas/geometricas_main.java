package Herança2.figurasGeometricas;

import javax.swing.*;

import static java.lang.Double.parseDouble;

public class geometricas_main {
    public static void main(String[] args) {
        int escolha = Integer.parseInt(JOptionPane.showInputDialog("Deseja registrar qual forma: triangulo(1), trapezio(2) ou retangulo(3)?"));

        switch (escolha){
            case 1:
                double altura = parseDouble(JOptionPane.showInputDialog("Qual a altura do triangulo?"));
                double base = parseDouble(JOptionPane.showInputDialog("Qual o comprimento da base do triangulo?"));

                triangulo tri = new triangulo(base, altura);

                tri.calcularArea(base, altura);
                break;
            case 2:
                altura = parseDouble(JOptionPane.showInputDialog("Qual a altura do trapezio?"));
                base = parseDouble(JOptionPane.showInputDialog("Qual o comprimento da base menor do trapezio?"));
                double baseMaior = parseDouble(JOptionPane.showInputDialog("Qual o comprimento da base maior?"));

                trapezio tra = new trapezio(base, altura);
                tra.baseMaior = baseMaior;

                tra.calcularArea(baseMaior, base, altura);
                break;
            case 3:
                altura = parseDouble(JOptionPane.showInputDialog("Qual a altura do retangulo?"));
                base = parseDouble(JOptionPane.showInputDialog("Qual o comprimento da base do retangulo?"));

                retangulo rect = new retangulo(base, altura);

                rect.calcularArea(base, altura);
                break;
        }
    }
}
