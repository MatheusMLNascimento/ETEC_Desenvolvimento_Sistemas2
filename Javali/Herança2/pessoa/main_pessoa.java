package Herança2.pessoa;

import javax.swing.*;

public class main_pessoa {
    public static void main(String[] args) {
        int escolha = Integer.parseInt(JOptionPane.showInputDialog("A pessoa a ser registrada é física(1) ou jurídica(2)?"));

        switch (escolha){
            case 1:
                String nome = JOptionPane.showInputDialog("Insira seu nome: ");
                String telefone = JOptionPane.showInputDialog("Insira seu telefone: ");
                String endereco = JOptionPane.showInputDialog("Insira seu endereço: ");
                String cpf = JOptionPane.showInputDialog("Insira seu cpf: ");

                pessoaFisica pessoa = new pessoaFisica(nome, telefone, endereco);
                pessoa.cpf = cpf;

                pessoa.exibirDados(nome, telefone, endereco, cpf);
                break;
            case 2:
                nome = JOptionPane.showInputDialog("Insira seu nome: ");
                telefone = JOptionPane.showInputDialog("Insira seu telefone: ");
                endereco = JOptionPane.showInputDialog("Insira seu endereço: ");
                String cnpj = JOptionPane.showInputDialog("Insira seu cnpj: ");

                pessoaJuridica pessoaJ = new pessoaJuridica(nome, telefone, endereco);
                pessoaJ.cnpj = cnpj;

                pessoaJ.exibirDados(nome, telefone, endereco, cnpj);
                break;
        }
    }
}
