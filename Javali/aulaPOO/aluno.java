package aulaPOO;

public class aluno {
    // Atributos
    protected String usuario;
    private String senha;

    // Gets e Sets
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    // Metódos

    public void exibir_dados(){
        System.out.println("Usuario: " + getUsuario() + "\nSenha: " + getSenha());
    }

}