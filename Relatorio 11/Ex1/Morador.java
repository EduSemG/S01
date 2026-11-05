package org.Ex1;

//classe abstrata
public abstract class Morador {

    //encapsulameento
    private String nome;

    public Morador(String nome) {
        this.nome = nome;
    }

    //getter
    public String getNome() {
        return nome;
    }

    //met abstrasto
    public abstract void apresentar();
}
