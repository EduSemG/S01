package Ex4;

//main
public class Main {
    public static void main(String[] args) {

        //agregacao
        Slime slime           = new Slime("Slime verde");
        Mandragora mandragora = new Mandragora("Mandragora da masmorra");

        //composicao
        Cozinheiro senshi = new Cozinheiro("Senshi", "ferro");

        senshi.adicionarIngrediente(slime);
        senshi.adicionarIngrediente(mandragora);

        senshi.servirBanquete();
    }

    //composicao: a panela, e criada dentro do cozinheiro, entao some junto com ele
    //agregacao: ja os monstros, sao criados fora, entao continuam existindo mesmo sem ele
}
