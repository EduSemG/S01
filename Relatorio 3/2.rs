use std::io;

fn acertou_o_alvo(palpite: i32, numero: i32) -> (bool, i32)
{
    let mut diferenca = 0;
    
    if palpite > numero
    {
        diferenca = palpite - numero;
    }
    else
    {
        diferenca = numero - palpite;
    }

    if diferenca <= 5
    {
        return (true,diferenca);
    }
    else
    {
        return (false,diferenca);
    }
}

fn main() 
{   
    let numero = 22;
    loop 
    {
    let mut palpite_str = String::new();
    println!("Digite um numero:");
    io::stdin().read_line(&mut palpite_str).expect("Erro ao ler");
    
    let palpite_n: i32 = palpite_str.trim().parse().unwrap_or(0);

        let (validacao, diferenca) = acertou_o_alvo(palpite_n, numero);

        if validacao == true
        {
            println!("Parabens, voce acertou o alvo!");
            println!("Voce ficou a apenas {} unidade(s) do numero secreto ({})", diferenca, numero);
            break;
        } 
        else 
        {
            println!("Voce passou longe! Tente novamente.");
        }
    }
}
