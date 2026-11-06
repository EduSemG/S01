package Ex4;

//heranca
public class Mandragora extends Monstro {

    public Mandragora(String nome) {
        super(nome);
    }

    //override
    @Override
    public String receita() {
        return "cortar em pedacos e fritar";
    }
}
