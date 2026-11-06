package Ex4;

//classe abstrata
public abstract class Monstro {

    //encapsulamento
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    //getter
    public String getNome() {
        return nome;
    }

    //metodo abstrato
    public abstract String receita();
}
