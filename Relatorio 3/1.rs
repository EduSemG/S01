use std::io;

fn validar_placa(placa: &str) -> bool
{
    let mut maiusculas = 0;
    let mut numeros = 0;

    for c in placa.chars() 
    {
        if c.is_ascii_uppercase()
        {    
            maiusculas += 1;  
        }
        if c.is_numeric()
        { 
            numeros += 1;
        }
    }
    if placa.chars().count() >= 7 && maiusculas >= 4 && numeros >= 2
    {
        return true;
    }
    else
    {
        return false
    }
}

fn main() 
{   
    loop 
    {
        let mut placa = String::new();
        println!("Digite a placa:");
        io::stdin().read_line(&mut placa).expect("Erro ao ler");

        let validacao = validar_placa(placa.trim());

        if validacao == true 
        {
            println!("Placa cadastrada no sistema!");
            break;
        } 
        else 
        {
            println!("Placa invalida. Tente novamente!");
        }
    }
}

//obs: o exemplo "ABC1234" usado no slide nao esta cadastrado
//porque tem apenas 3 letras maiusculas ao inves de pelo menos 4 conforme pedido no enunciado
