package Herança2.figurasGeometricas;


import javax.swing.*;

public class trapezio extends figuraGeometrica_super {
    public double baseMaior;
    public trapezio(double _base, double _altura) {
        super(_base, _altura);
    }

    void calcularArea(double baseMaior,double base, double altura){
        JOptionPane.showMessageDialog(null, String.format("(%.2f * %.2f) * %.2f / 2 = %.2f", baseMaior, base, altura, (base * baseMaior) * altura / 2));
    }
}
