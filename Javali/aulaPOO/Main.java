package aulaPOO;

public class Main {
    public static void main(String[] args) {
        funcionario f1 =  new funcionario();
        f1.setCodigo(1354);
        f1.setCargo("Professor");
        f1.setNome("Matheus Martins");
        f1.setHe(10);
        f1.setDesconto(200);

        // Chama metódo ver_dados, permitindo a vizualização dos dados armazenados
        f1.ver_Dados();

        f1.calculaSal(15000);
    }
}
