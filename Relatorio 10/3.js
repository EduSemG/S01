//gf

//composicao
class FichaDeCriatura {
    constructor(criatura, nivelDePerigo) {
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }

    descrever() {
        return `Criatura: ${this.criatura} - Nivel de perigo: ${this.nivelDePerigo}`;
    }
}

class DiarioMisterioso {
    //encapsulamento
    #fichas = [];

    constructor(numero) {
        this.numero = numero;
    }

    anotar(criatura, nivelDePerigo) {
        //comp
        const ficha = new FichaDeCriatura(criatura, nivelDePerigo);
        this.#fichas.push(ficha);
    }

    exibirFichas() {
        console.log(`\nDIARIO ${this.numero}`);
        this.#fichas.forEach(f => console.log(f.descrever()));
    }
}


//agregacao
class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }
}

class CabanaDoMisterio {
    #funcionarios = [];

    constructor(dono) {
        this.dono = dono;
    }

    contratar(funcionario) {
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas() {
        console.log(`\nCABANA DO MISTERIO (dono: ${this.dono})`);
        this.#funcionarios.forEach(f => console.log(`${f.nome} - ${f.cargo}`));
    }
}


//main

//criaturas
const diario = new DiarioMisterioso(3);
diario.anotar('Gnomo', 'Medio');
diario.anotar('Titio avo', 'Intergalatico');
diario.anotar('Zumbi', 'Baixo');

diario.exibirFichas();

//funcionarips
const soos  = new Funcionario('Soos', 'Faz tudo');
const wendy = new Funcionario('Wendy', 'Caixa');

const cabana = new CabanaDoMisterio('Thanos');
cabana.contratar(soos);
cabana.contratar(wendy);

cabana.abrirAsPortas();

//6
//composicao: as fichas so existem dentro do diario.     Agregacao: os funcionarios existem fora da cabana
