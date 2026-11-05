package Ex3;

import java.util.HashMap;

//o mapa da cidade
public class MapaDeAvistamentos {

    //hashmap - chave e o nome do local, valor e o ser que foi visto la
    //o valor e do tipo da interface, entao aceita alienigena e espirito
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }

    //put(chave, valor) guarda o ser usando o local como chave
    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
        System.out.println("[Mapa] Avistamento registrado em: " + local);
    }

    public void investigar(String local) {
        System.out.println("\n[Investigacao] Investigando " + local + "...");

        //get(chave) devolve null se o local nao estiver no mapa
        Sobrenatural ser = avistamentos.get(local);

        if (ser == null) {
            System.out.println("O local " + local + " esta tranquilo, nada por aqui.");
        } else {
            //polimorfismo - nao sei se e alienigena ou espirito, cada um se manifesta do seu jeito
            ser.manifestar();
        }
    }
}
