package Ex2;

//heranca
public class ComboLeblanc extends ItemDoCardapio {

    public ComboLeblanc(String nome, double preco) {
        super(nome, preco);
    }

    //override
    @Override
    public double precoFinal() {
        return getPreco() * 0.9;
    }
}
