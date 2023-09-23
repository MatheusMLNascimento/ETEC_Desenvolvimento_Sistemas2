package aulaPOO;

public class raiz {
    // Atributos
    public int num;

    // Sets e Gets
    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    // Metódos

    public void calcular_raiz(){
        System.out.println("Raiz: " + Math.sqrt(getNum()));
    }
}
