#include <iostream>
#include <string>
#include <vector>
using namespace std;

//base
class LinkSocial {

//encapsulamento
private:
    string nome;
    string arcana;
    int rank;

public:
    //construtor
    LinkSocial() : nome(""), arcana(""), rank(0) {}

    //destrutor (ignorar)
    virtual ~LinkSocial() {}

    //setters
    void setNome(string n) {
        nome = n;
    }

    void setArcana(string a) {
        arcana = a;
    }

    void setRank(int r) {
        rank = r;
    }

    //getters
    string getNome() {
        return nome;
    }

    string getArcana() {
        return arcana;
    }

    int getRank() {
        return rank;
    }

    //subir o rank
    void subirRank() {
        rank++;
    }
};

int main() {
    //vetor
    vector<LinkSocial*> links;

    //criar o personagem e ponteiro
    LinkSocial* p1 = new LinkSocial();
    links.push_back(p1);

    //set
    p1->setNome("Joseph Joestar");
    p1->setArcana("Hermit");
    p1->setRank(1);

    cout << "=== Status Link Social ===" << endl;
    cout << "Nome: " << p1->getNome() << endl;
    cout << "Arcana: " << p1->getArcana() << endl;
    cout << "Rank: " << p1->getRank() << endl;

    //subir o rank
    p1->subirRank();
    cout << endl << "Passando tempo com personagem..." << endl;

    cout << endl << "=== Status Link Social ===" << endl;
    //get
    for (LinkSocial* l : links) {
        cout << "Nome: " << l->getNome() << endl;
        cout << "Arcana: " << l->getArcana() << endl;
        cout << "Rank: " << l->getRank() << endl;
    }

    //limpar memoria
    for (LinkSocial* l : links) {
        delete l;
    }

    return 0;
}
