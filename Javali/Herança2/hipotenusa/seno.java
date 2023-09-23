package Herança2.hipotenusa;

import javax.swing.*;

public class seno extends geometria_super {
    public double catOposto;

    public seno(double _hipotenusa) {
        super(_hipotenusa);
    }

    void calcularCosseno(double hipotenusa, double catOposto){
        JOptionPane.showMessageDialog(null, String.format("%.2f/%.2f = %.3f", catOposto, hipotenusa, catOposto / hipotenusa));
    }
}
