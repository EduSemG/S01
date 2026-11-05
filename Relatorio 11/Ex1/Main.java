package Ex1;

//main
public class Main {
    public static void main(String[] args) {

        //polimorfismo
        Morador howl     = new Mago("Patolino", "esquentar comida fria!");
        Morador calcifer = new DemonioDoFogo("Perna longa");

        howl.apresentar();
        calcifer.apresentar();


        //Morador generico = new Morador("Fulano");
    }
}
