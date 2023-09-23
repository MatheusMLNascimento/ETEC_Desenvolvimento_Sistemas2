package Herança2.pessoa;


import javax.swing.*;

public class pessoaJuridica extends pessoa_super {

    public String cnpj;

    public pessoaJuridica(String _nome, String _telefone, String _endereco) {
        super(_nome, _telefone, _endereco);
    }

    void exibirDados(String nome,String telefone,String endereco,String cnpj){
        JOptionPane.showMessageDialog(null ,"Os dados que foram registrados:\nNome: " + nome
                +"\nTelefone: " + telefone
                +"\nEndereço: " + endereco
                +"\nCNPJ: " + cnpj);
    }
}
