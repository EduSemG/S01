package Ex2;

import java.util.ArrayList;

//classe cardapio
public class CafeLeblanc {

    //agregacao
    private ArrayList<ItemDoCardapio> cardapio;

    public CafeLeblanc() {
        this.cardapio = new ArrayList<>();
    }

    //adiciona o item no cardapio
    public void adicionar(ItemDoCardapio item) {
        cardapio.add(item);
    }

    public void mostrarCardapio() {
        System.out.println("Cardapio Leblanc");

        //polimorfismo
        for (ItemDoCardapio item : cardapio) {
            System.out.println(item.getNome() + "  R$ " + item.precoFinal());
        }
    }
}
