package aulaPOO;

public class potencia {
    // Atributos
    public int num;
    public int num1;

    // Gets e Sets
    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getNum1() {
        return num1;
    }

    public void setNum1(int num1) {
        this.num1 = num1;
    }

    // Metódos

    public void calcularPotencia(){
        System.out.printf("%d^%d = %.0f", getNum(), getNum1(), Math.pow(getNum(), getNum1()));
    }
}
