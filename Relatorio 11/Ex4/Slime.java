package Ex4;

//heranca
public class Slime extends Monstro {

    public Slime(String nome) {
        super(nome);
    }

    //override
    @Override
    public String receita() {
        return "ferver ate ficar firme";
    }
}
