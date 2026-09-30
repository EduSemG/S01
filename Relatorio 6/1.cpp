#include <iostream>
#include <string>
#include <vector>

using namespace std;

class Banda {
public:

    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    Banda(string n, int i, float p, int e) : nome(n), integrantes(i), potenciaSom(p), energia(e) {}

    void duelar(Banda& rival) {
        cout<<"A banda "<<nome<<" desafiou a banda "<<rival.nome<<"!"<<endl;
        
        rival.energia = rival.energia - potenciaSom;
        
        cout<<nome<<" ganhou!"<<" E "<<rival.nome<<" perdeu energia!"<<endl;
    }
};

int main() 
{
    Banda banda1("AC DC", 5, 676.67, 1000);
    Banda banda2("Imagine Dragons", 4, 69.69, 1000);

    cout<<"STATUS INICIAL"<<endl;
    cout<<banda1.nome<<" Energia: "<<banda1.energia<<endl;
    cout<<banda2.nome<<" Energia: "<<banda2.energia<<endl;
    cout<<"====================================="<<endl;

    banda1.duelar(banda2);

    cout<<"======================================="<<endl;
    
    cout<<"STATUS FINAL"<<endl;
    cout<<banda1.nome<< " Energia: "<<banda1.energia<<endl;
    cout<<banda2.nome<< " Energia: "<<banda2.energia;

    return 0;
}
