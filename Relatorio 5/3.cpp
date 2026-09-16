#include <iostream>
using namespace std;

int main() 
{   
    double max;
    cout<<"Informe a capacidade maxima de carga do drone (kg): ";
    cin>>max;

    double pesoAtual = 0.0;

    int opcao;
    while(opcao!=4)
    {
        cout<<endl;
        cout<<"=== SISTEMA DE CARGA DO DRONE ==="<<endl;
        cout<<"1. Verificar Carga"<<endl;
        cout<<"2. Carregar Pacote"<<endl;
        cout<<"3. Descarregar Pacote"<<endl;
        cout<<"4. Encerrar Operacao"<<endl;
        cout<<"Escolha uma opcao: ";
        cin>>opcao;


        switch(opcao)
        {
            case 1:
            {
                cout<<"Carga Atual: "<<pesoAtual<<" kg / "<<max<<" kg"<<endl;
                cout<<"Espaco Disponivel: " <<max - pesoAtual<<" kg"<<endl;
                break;
            }

            case 2:
            {
                double pesoPacote;
                cout<<"Digite o peso do pacote a ser carregado (kg): ";
                cin>>pesoPacote;
            
                if((pesoAtual + pesoPacote)> max) 
                cout<<"Alerta: Peso maximo de decolagem excedido! Operacao cancelada."<<endl;
                else 
                {
                    pesoAtual += pesoPacote;
                    cout<<"Pacote adicionado!"<<endl;
                }
                break;
            }

            case 3:
            {
                double pesoRemover;
                cout<<"Digite o peso do pacote a ser descarregado (kg): ";
                cin>>pesoRemover;
            
                if(pesoRemover > pesoAtual) 
                    cout<<"Alerta: Nao e possivel remover mais peso do que o carregado! Operacao cancelada."<<endl;
                else 
                {
                    pesoAtual -= pesoRemover;
                    cout<<"Pacote descarregado!"<<endl;
                }
                break;
            }

            case 4:
            {
                cout<<"Encerrando sistema de telemetria...";
                break;
            }

            default:
            {
                cout<<"Erro, opcao invalida";
                break;
            }
        }
    }
    return 0;
}
