package Herança2.figurasGeometricas;


import javax.swing.*;

public class retangulo extends figuraGeometrica_super {
    public retangulo(double _base, double _altura) {
        super(_base, _altura);
    }

    void calcularArea(double base, double altura){
        JOptionPane.showMessageDialog(null, String.format("%.2f * %.2f = %.2f", base, altura, altura * base));
    }
}
