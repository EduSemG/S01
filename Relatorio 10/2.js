//valorant

//composicao
class Pistola {
    constructor(modelo) {
        this.modelo = modelo;
    }
}

//classe base
class AgenteProtocolo {
    //encap
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        //composicao
        this.#pistola = new Pistola(modeloDaPistola);
    }

    //virtual
    usarHabilidade() {
        throw new Error(`O agente ${this.codinome} deve implementar o metodo 'usarHabilidade()'`);
    }

    entrarEmCombate() {
        console.log(`${this.codinome} entrou em combate com ${this.#pistola.modelo}! - ${this.usarHabilidade()}`);
    }
}


//heranca
class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return 'Lanca uma cortina de fumaca para bloquear a visao!';
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return 'Usa um drone para revelar os inimigos!';
    }
}

class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return 'Avanca e cega os inimigos!';
    }
}


//agregacao
class Esquadrao {
    #agentes;

    constructor(nome, agentes) {
        this.nome = nome;
        this.#agentes = agentes;
    }

    iniciarPartida() {
        console.log(`\n${this.nome} comeca a partida!`);

        //polimorfismo
        this.#agentes.forEach(a => a.entrarEmCombate());
    }

    listarControladores() {
        return this.#agentes.filter(a => a instanceof Controlador);
    }
}


//main

//agentes
const brimstone = new Controlador('Brimstone', 'Classic');
const omen = new Controlador('Omen', 'Ghost');
const sova = new Iniciador('Sova', 'Sheriff');
const jett = new Duelista('Jett', 'Frenzy');

//agregacao
const esquadrao = new Esquadrao('Valorant', [brimstone, omen, sova, jett]);

esquadrao.iniciarPartida();

console.log('\nControladores do esquadrao:');
esquadrao.listarControladores().forEach(c => console.log(`- ${c.codinome}`));

//item 8
// const agenteqlqr = new AgenteProtocolo('qlqr', 'Classic');
// agenteqlqr.entrarEmCombate();
