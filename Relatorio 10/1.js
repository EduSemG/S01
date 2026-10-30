//pokemon

//classe pai
class Pokemon {
    //encapsulamento
    #vida;

    constructor(apelido, tipo, vidaInicial) {
        this.apelido = apelido;
        this.tipo = tipo;

        this.#vida = vidaInicial;
    }

    //getter
    get vida() {
        return this.#vida;
    }

    sofrerDano(pontos) {
        this.#vida -= pontos;

        if (this.#vida < 0) {
            this.#vida = 0;
        }

        console.log(`${this.apelido} sofreu ${pontos} de dano e ficou com ${this.#vida} de vida.`);
    }

    //virtual
    atacar(alvo) {
        console.log(`${this.apelido} usou um ataque genérico em ${alvo.apelido}!`);
        alvo.sofrerDano(10);
    }
}


//heranca
class Squirtle extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Água', vidaInicial);
    }

    //override
    atacar(alvo) {
        console.log(`${this.apelido} usou Jato de Água em ${alvo.apelido}!`);
        alvo.sofrerDano(20);
    }
}

//bulbasaur tbm e pokemon
class Bulbasaur extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Planta', vidaInicial);
    }

    //override
    atacar(alvo) {
        console.log(`${this.apelido} usou Chicote de Vinha em ${alvo.apelido}!`);
        alvo.sofrerDano(15);
    }
}


//main

const squirtle  = new Squirtle('Tirulipa', 50);
const bulbasaur = new Bulbasaur('Jair', 30);

console.log('BATALHA COMECOU');

//ataques
bulbasaur.atacar(squirtle);

squirtle.atacar(bulbasaur);
squirtle.atacar(bulbasaur);

//ler vida
console.log('\n--- VIDA RESTANTE ---');
console.log(`${squirtle.apelido}: ${squirtle.vida}`);
console.log(`${bulbasaur.apelido}: ${bulbasaur.vida}`);

//item 5
// console.log(squirtle.#vida);
