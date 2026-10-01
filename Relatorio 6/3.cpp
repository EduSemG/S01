#include <iostream>
#include <string>
#include <vector>
using namespace std;

//base
class MembroInatel {

//encapsulameto
protected:
    string nome;

public:
    //construtor
    MembroInatel(string n) : nome(n) {}

    //virtual
    virtual void seApresentar() {
        cout << endl << "Sou um membro da cominidade Inatel: " << nome << endl;
    }

    //destrutor (ignorar)
    virtual ~MembroInatel() {}
};

//heranca
class Aluno : public MembroInatel {
private:
    string curso;

public:
    //repassa nome p construtor do pai e inicia curso
    Aluno(string n, string c) : MembroInatel(n), curso(c) {}

    //override
    void seApresentar() override {
        cout << endl << "Meu nome e " << nome << " e estudo no curso de " << curso << endl;
    }
};

//heranca
class Professor : public MembroInatel {
private:
    string disciplina;

public:
    //repassa nome p construtor do pai e inicia disciplina
    Professor(string n, string d) : MembroInatel(n), disciplina(d) {}

    //override
    void seApresentar() override {
        cout << endl << "Meu nome e " << nome << " e leciono a disciplina de " << disciplina << endl;
    }
};

int main() {
    //polimorfismo
    vector<MembroInatel*> membros;

    //new criando objetos e devolve ponteiros
    membros.push_back(new MembroInatel("Maria"));
    membros.push_back(new Aluno("Eduardo", "Engenharia de Software"));
    membros.push_back(new Professor("Ruan", "S01"));
    

    cout << "=== FETIN ===" << endl;
    
    //polimorismo em acao
    for (MembroInatel* m : membros) {
        m->seApresentar();
    }

    //deletar memoria
    for (MembroInatel* m : membros) {
        delete m;
    }

    return 0;
}
