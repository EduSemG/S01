package Ex3;

import java.util.HashMap;

//class mapa
public class MapaDeAvistamentos {

    //hashmap
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
        System.out.println("[Mapa] Avistamento registrado em: " + local);
    }

    public void investigar(String local) {
        System.out.println("\n[Investigacao] Investigando " + local + "...");

        Sobrenatural ser = avistamentos.get(local);

        if (ser == null) {
            System.out.println("O local " + local + " esta tranquilo, nada por aqui.");
        } else {
            ser.manifestar();
        }
    }
}
