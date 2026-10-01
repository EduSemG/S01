#include <iostream>
#include <string>
#include <vector>
using namespace std;

//base
class Hobbit {

//encapsulamento
protected:
    string nome;

public:
    //construtor
    Hobbit(string n) : nome(n) {}

    //virtual
    virtual void fazerAtividade() {
        cout << endl << "O hobbit " << nome << " esta aproveitando um dia tranquilo na Comarca." << endl;
    }

    //destrutor virtual (ignorar)
    virtual ~Hobbit() {}
};

//heranca
class Jardineiro : public Hobbit {
public:
    //repassa nome p construtor do pai
    Jardineiro(string n) : Hobbit(n) {}

    //override
    void fazerAtividade() override {
        cout << endl << "O jardineiro " << nome << " esta cuidando das flores e plantas ao redor das tocas!" << endl;
    }
};

//cozinheiro herda de hobbit
class Cozinheiro : public Hobbit {
public:
    Cozinheiro(string n) : Hobbit(n) {}

    //override
    void fazerAtividade() override {
        cout << endl << "O cozinheiro " << nome << " esta preparando o segundo cafe da manha para os convidados!" << endl;
    }
};

//fazendeiro herda de hobbit
class Fazendeiro : public Hobbit {
public:
    Fazendeiro(string n) : Hobbit(n) {}

    //override
    void fazerAtividade() override {
        cout << endl << "O fazendeiro " << nome << " esta colhendo vegetais e hortalicas em suas terras!" << endl;
    }
};

int main() {

    //polimorfismo
    vector<Hobbit*> comarca;

    //criando o case base e os com profissoes
    comarca.push_back(new Hobbit("Frodo"));
    comarca.push_back(new Jardineiro("Samwise"));
    comarca.push_back(new Cozinheiro("Bombur"));
    comarca.push_back(new Fazendeiro("Magote"));

    cout << "Na Comarca..." << endl;

    //polimorfismo em acao
    for (Hobbit* h : comarca) {
        h->fazerAtividade();
    }

    //deleta memoria
    for (Hobbit* h : comarca) {
        delete h;
    }

    return 0;
}
