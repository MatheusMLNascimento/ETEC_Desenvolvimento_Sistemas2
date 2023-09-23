package Herança;

public class VideoGame  extends jogo{
    String pais_origem;
    String modelo;
    public VideoGame(String _nome_do_jogo, String _cate, String _gen, double _pre) {
        super(_nome_do_jogo, _cate, _gen, _pre);
    }
}
