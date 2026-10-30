//hxh

//aranha
class Aranha {
    constructor(nome, numero) {
        this.nome = nome;
        this.numero = numero;
    }
}


//classe base
class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome;
    }

    //virtual
    atacar(alvo) {
        console.log(`${this.nome} lançou um ataque de aura contra ${alvo.nome}!`);
    }
}

//heranca
class Intensificador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} envolveu o punho em aura e socou ${alvo.nome}!`);
    }
}

class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} transformou a aura em eletricidade e atacou ${alvo.nome}!`);
    }
}

class Materializador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} materializou uma lamina e atacou ${alvo.nome}!`);
    }
}


//agregacao
class TrupeFantasma {
    //encapsulamento
    #aranhas;

    constructor(cidade, aranhas = []) {
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas() {
        console.log(`\nTRUPE FANTASMA AVISTADA EM ${this.cidade.toUpperCase()}!`);
        this.#aranhas.forEach(a => console.log(`Aranha ${a.numero}: ${a.nome}`));
    }

    buscarAranha(numero) {
        return this.#aranhas.find(a => a.numero === numero);
    }
}


//main

//aranhas
const feitan    = new Aranha('Feitan', 2);
const nobunaga  = new Aranha('Nobunaga', 6);

const trupe = new TrupeFantasma('Santa Rita do Sapucai', [feitan, nobunaga]);

trupe.revelarAranhas();

const alvo = trupe.buscarAranha(6);

//hunters
const hunters = [
    new Intensificador('Gon'),
    new Transmutador('Killua'),
    new Materializador('Kurapika')
];

console.log('\nOS HUNTERS ATACAM!');

//polimorfismo
hunters.forEach(h => h.atacar(alvo));
