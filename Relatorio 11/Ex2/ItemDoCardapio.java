package Ex2;

//classe intens
public class ItemDoCardapio {

    //encapsulamento
    private String nome;
    private double preco;

    public ItemDoCardapio(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    //getters
    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }

    //item comum e vendido pelo preco cadastrado
    public double precoFinal() {
        return preco;
    }
}
