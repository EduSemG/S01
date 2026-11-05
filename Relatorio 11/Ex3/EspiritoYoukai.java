package Ex3;

//tambem implementa a interface
public class EspiritoYoukai implements Sobrenatural {

    //encapsulamento
    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    //override
    @Override
    public void manifestar() {
        System.out.println("[Espirito] " + nome + " surgiu do nada e saiu correndo pelo local assustando todo mundo!");
    }
}
