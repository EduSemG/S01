package Ex1;

//heranca
public class DemonioDoFogo extends Morador {

    public DemonioDoFogo(String nome) {
        super(nome);
    }

    //overrride
    @Override
    public void apresentar() {
        System.out.println("[Demônio do Fogo]: Eu sou " + getNome() + " e eu ergo a escada prateada!");
    }
}
