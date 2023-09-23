package Herança;

import javax.swing.JOptionPane;
import java.util.Scanner;

public class main {
    public static void main(String[] args) {
        int escolha = Integer.parseInt(JOptionPane.showInputDialog("Escolha se quer registrar um jogo de cartas(1), um jogo de tabuleiro(2) ou um videogame(3):"));

        switch (escolha){
            case 1:
                String nome = JOptionPane.showInputDialog("Insira o nome do jogo: ");
                String cate = JOptionPane.showInputDialog("\nInsira a categoria do jogo: ");
                String gen = JOptionPane.showInputDialog("\nInsira o gênero do jogo: ");
                double pre = Double.parseDouble(JOptionPane.showInputDialog("\nInsira o preço do jogo: "));
                int qtd = Integer.parseInt(JOptionPane.showInputDialog("\nInsira a quantidade: "));

                JogoDeCarta jogo = new JogoDeCarta(nome, cate, gen, pre);
                jogo.qtd_carta = qtd;

                JOptionPane.showMessageDialog(null," O nome do Jogo é : "+ jogo.nome_do_jogo +
                        "\nA categoria: "+ jogo.cate +
                        "\nO genero: "+ jogo.gen +
                        "\nO preço "+ jogo.pre +
                        "\nA quantidade de cartas: "+ jogo.qtd_carta );
                break;

            case 2:
                nome = JOptionPane.showInputDialog("Insira o nome: ");
                cate = JOptionPane.showInputDialog("\nInsira a categoria: ");
                gen = JOptionPane.showInputDialog("\nInsira o gênero: ");
                pre = Double.parseDouble(JOptionPane.showInputDialog("\nInsira o preço: "));
                qtd = Integer.parseInt(JOptionPane.showInputDialog("\nInsira a quantidade de peças: "));

                Tabuleiro tabu = new Tabuleiro(nome, cate, gen, pre);
                tabu.qtd_pec = qtd;

                JOptionPane.showMessageDialog(null," O nome do Jogo é : "+ tabu.nome_do_jogo +
                        "\nA categoria: "+ tabu.cate +
                        "\nO genero: "+ tabu.gen +
                        "\nO preço: "+ tabu.pre +
                        "\nA quantidade de cartas: "+ tabu.qtd_pec );
                break;

            case 3:
                nome = JOptionPane.showInputDialog("Insira o nome do videogame: ");
                cate = JOptionPane.showInputDialog("\nInsira a categoria: ");
                gen = JOptionPane.showInputDialog("\nInsira o gênero: ");
                pre = Double.parseDouble(JOptionPane.showInputDialog("\nInsira o preço: "));
                String modelo = JOptionPane.showInputDialog("\nInsira o modelo: ");
                String pais_origem = JOptionPane.showInputDialog("\nInsira o pais de origem: ");

                VideoGame game = new VideoGame(nome, cate, gen, pre);
                game.modelo = modelo;
                game.pais_origem = pais_origem;

                JOptionPane.showMessageDialog(null," O nome do Jogo: "+ game.nome_do_jogo +
                        "\nA categoria: "+ game.cate +
                        "\nO genero: "+ game.gen +
                        "\nO preço: "+ game.pre +
                        "\nO modelo: " + game.modelo +
                        "\nO pais de origem: " + game.pais_origem);
                break;
        }

    }
}
