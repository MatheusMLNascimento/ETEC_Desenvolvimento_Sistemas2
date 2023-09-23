package Herança;

import javax.swing.JOptionPane;

public class main_jogo{
    public static void main(String[] args) {
     
        String nome = JOptionPane.showInputDialog("Insira o nome do jogo: ");
        String cate = JOptionPane.showInputDialog("\nInsira a categoria do jogo: ");
        String gen = JOptionPane.showInputDialog("\nInsira o gênero do jogo: ");
        Double pre = Double.parseDouble(JOptionPane.showInputDialog("\nInsira o preço do jogo: ")); 
        int qtd = Integer.parseInt(JOptionPane.showInputDialog("\nInsira a quantidade de cartas do jogo: "));

        JogoDeCarta jogo = new JogoDeCarta(nome, cate, gen, pre);
        jogo.qtd_carta = qtd;
        
    }
}
