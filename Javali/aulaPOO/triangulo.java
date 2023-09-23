package aulaPOO;

public class triangulo {
    // Atributos
    public double base;
    public double altura;

    // Gets e Sets
    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public double getBase() {
        return base;
    }

    public void setBase(double base) {
        this.base = base;
    }

    // Metódos
    public void calcularArea(){
        System.out.printf("%.2f x %.2f / 2 = %.2f", getBase(), getAltura(), ((getBase() * getAltura()) / 2));
    }

}
