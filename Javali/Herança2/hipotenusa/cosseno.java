package Herança2.hipotenusa;

import javax.swing.*;

public class cosseno extends geometria_super {
    public double catAdjacente;
    public cosseno(double _hipotenusa) {
        super(_hipotenusa);
    }

    void calcularCosseno(double hipotenusa, double catAdjacente){
        JOptionPane.showMessageDialog(null, String.format("%.2f/%.2f = %.3f", catAdjacente, hipotenusa, catAdjacente / hipotenusa));
    }
}
