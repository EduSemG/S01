package Ex3;

//implementa a interface
public class Alienigena implements Sobrenatural {

    //encapsulamento
    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    //override
    @Override
    public void manifestar() {
        System.out.println("[Alienigena] " + nome + " apareceu e comecou a sugar a energia de todo mundo por perto!");
    }
}
