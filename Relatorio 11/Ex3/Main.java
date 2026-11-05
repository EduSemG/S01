package Ex3;

//main
public class Main {
    public static void main(String[] args) {

        Alienigena serpo      = new Alienigena("Serpo");
        EspiritoYoukai vovo   = new EspiritoYoukai("Vovo Turbo");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();

        //registrando cada um em um local
        mapa.registrar("Tunel abandonado", vovo);
        mapa.registrar("Predio da escola", serpo);

        //investigando os dois locais registrados
        mapa.investigar("Tunel abandonado");
        mapa.investigar("Predio da escola");

        //local que nao foi registrado
        mapa.investigar("Praca central");
    }
}
