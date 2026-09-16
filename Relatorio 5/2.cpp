#include <iostream>
using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[],int tamanho)
{
    float prob_f = 1.0;
    for(int i=0;i<tamanho;i++)
    {
        prob_f = prob_f * probabilidades[i];
    }
    return prob_f;

}

int main() 
{   
    int t;
    cout<<"Digite a quantidade de componentes do sistema: "<<endl;
    cin>>t;

    float prob[t];
    for(int i=0;i<t;i++)
    {
        cout<<"Digite a probabilidade do componente "<< i + 1 <<" (ex: 0.95): "<<endl;
        cin>>prob[i];
    }

    float prob_f = calcular_confiabilidade_sistema(prob, t);

    cout<<"Confiabilidade total do sistema: "<<prob_f<<" ("<<prob_f*100<<"%)";

    return 0;
}
