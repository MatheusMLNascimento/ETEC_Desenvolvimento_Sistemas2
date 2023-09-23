package aulaPOO;

import org.w3c.dom.ls.LSOutput;

public class funcionario {


    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getSalario() {
        return salario;
    }

    public void setSalario(float salario) {
        this.salario = salario;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public float getVendas() {
        return vendas;
    }

    public void setVendas(float vendas) {
        this.vendas = vendas;
    }

    public float getHe() {
        return he;
    }

    public void setHe(float he) {
        this.he = he;
    }

    public float getDesconto() {
        return desconto;
    }

    public void setDesconto(float desconto) {
        this.desconto = desconto;
    }

    // Metodos da classe funcionarios
    public void calculaSal(float salario){
        setSalario(salario);
        if(salario> 4000){
            setSalario(getSalario()-getDesconto()+((getSalario()/220) * getHe()));
            System.out.println("Salário líquido: " + getSalario());
        }
    }

    // Sem return e sem paramêtro, só manda mensagem
    // Usa o que o usuário digita para responder
    public void ver_Dados(){
        System.out.println("Código: "+ getCodigo());
        System.out.println("Nome: " + getNome());
        System.out.println("Cargo: " + getCargo());
        System.out.println("Salário: " + getSalario());
        System.out.println("Horas Extras: " + getHe());
    }

    public float calc_desconto(float desconto){
        if(getSalario() > 0){
            setDesconto((desconto / 100) * getSalario());
            System.out.println("Salário líquido: " + (getSalario() - getDesconto()));
        }
        return getDesconto();
    }

    // Calculo de Horas Extras
    public float calc_he(){
        setHe(((getSalario())/220)* getHe());
        return getHe();
    }

    // Atributos da classe
    public int codigo;
    public String nome;
    private float salario;
    public String cargo;
    public float vendas;
    public float he;// Horas extras
    public float desconto;
}
