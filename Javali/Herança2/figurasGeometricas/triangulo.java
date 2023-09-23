package Herança2.figurasGeometricas;


import javax.swing.*;

public class triangulo extends figuraGeometrica_super {
    public triangulo( double _base ,double _altura){
        super(_base, _altura);
    }

    void calcularArea(double base, double altura){
        JOptionPane.showMessageDialog(null, String.format("%.2f * %.2f / 2 = %.2f", base, altura, (altura * base) / 2));
    }
}
