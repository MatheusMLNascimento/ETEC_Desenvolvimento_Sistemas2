package Herança;

// extends permite a classe selecionada, nesse caso a "JogoDeCarta" á utilizar os comandos/variaveis da classe "Jogo", num sistema de Herança
public class JogoDeCarta extends jogo {
    int qtd_carta;

    public JogoDeCarta(String _nome_do_jogo, String _cate, String _gen, Double _pre){
        // 'super' serve para identificar quais são os comandos/variaveis que estão sendo herdados
        super(_nome_do_jogo, _cate, _gen, _pre);
    }
}
