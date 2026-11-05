package Ex3;

//main
public class Main {
    public static void main(String[] args) {

        Alienigena serpo      = new Alienigena("Serpo");
        EspiritoYoukai vovo   = new EspiritoYoukai("Vovo Turbo");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();

        mapa.registrar("Tunel abandonado", vovo);
        mapa.registrar("Predio da escola", serpo);

        mapa.investigar("Tunel abandonado");
        mapa.investigar("Predio da escola");

        //local que nao foi registrado
        mapa.investigar("Praca central");
    }
}
