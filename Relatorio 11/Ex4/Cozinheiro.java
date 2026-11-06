package Ex4;

import java.util.ArrayList;


public class Cozinheiro {

    private String nome;

    //composicao
    private Panela panela;

    //agregacao
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;

        //composicao
        this.panela = new Panela(materialDaPanela);

        this.ingredientes = new ArrayList<>();
    }

    //agregacao
    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("Banquete do cozinheiro " + nome);
        System.out.println("Na panela de " + panela.getMaterial());

        //polimorfismo
        for (Monstro monstro : ingredientes) {
            System.out.println("- " + monstro.getNome() + ": " + monstro.receita());
        }
    }
}
