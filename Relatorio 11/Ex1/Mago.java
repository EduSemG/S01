package org.Ex1;

//heranca
public class Mago extends Morador {

    //atributo so do mago
    private String feitico;

    public Mago(String nome, String feitico) {
        super(nome);
        this.feitico = feitico;
    }

    //oveerride
    @Override
    public void apresentar() {
        System.out.println("[Mago]: Meu nome e " + getNome() + " e o meu feitico e " + feitico);
    }
}
