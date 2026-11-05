package Ex2;

//main
public class Main {
    public static void main(String[] args) {
        ItemDoCardapio cafe  = new ItemDoCardapio("Cafe", 6.0);
        ItemDoCardapio curry = new ItemDoCardapio("Paozinho", 8.0);
        ComboLeblanc combo   = new ComboLeblanc("Paozinho + Cafe", 14.0);

        CafeLeblanc leblanc = new CafeLeblanc();

        leblanc.adicionar(cafe);
        leblanc.adicionar(curry);
        leblanc.adicionar(combo);

        leblanc.mostrarCardapio();
    }
}
