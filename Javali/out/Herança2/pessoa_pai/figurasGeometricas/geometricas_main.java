package Herança2.pessoa_pai.figurasGeometricas;

import Herança2.pessoa_pai.figurasGeometricas.retangulo;
import Herança2.pessoa_pai.figurasGeometricas.trapezio;
import Herança2.pessoa_pai.figurasGeometricas.triangulo;

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

                JOptionPane.showMessageDialog(null, "Triangulo"+"\nAltura: " + tri.altura + "\nBase: " + tri.base);
                break;
            case 2:
                altura = parseDouble(JOptionPane.showInputDialog("Qual a altura do trapezio?"));
                base = parseDouble(JOptionPane.showInputDialog("Qual o comprimento da base menor do trapezio?"));
                double baseMaior = parseDouble(JOptionPane.showInputDialog("Qual o comprimento da base maior?"));

                trapezio tra = new trapezio(base, altura);
                tra.baseMaior = baseMaior;

                JOptionPane.showMessageDialog(null, "Trapezio"+"\nAltura: " + tra.altura
                        + "\nBase menor: " + tra.base + "\nBase maior: " + tra.baseMaior);
                break;
            case 3:
                altura = parseDouble(JOptionPane.showInputDialog("Qual a altura do retangulo?"));
                base = parseDouble(JOptionPane.showInputDialog("Qual o comprimento da base do retangulo?"));

                retangulo rect = new retangulo(base, altura);

                JOptionPane.showMessageDialog(null, "Retangulo"+"\nAltura: " + rect.altura + "\nBase: " + rect.base);
                break;
        }
    }
}
