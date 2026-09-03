use std::io;

fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32)
{
    println!("\n--- Numeros no intervalo terminados em {} ---", digito);
    for i in limite_inferior..=limite_superior
    {
        if i%10 == digito
        {
            println!("{}", i);
        }
    }
}

fn main() 
{   
    println!("Digite o digito final desejado (0 a 9): ");
    let mut digito = String::new();
    io::stdin().read_line(&mut digito).expect("Erro ao ler");
    let digito: i32 = digito.trim().parse().unwrap_or(0);

    println!("Digite o limite inferior: ");
    let mut lim_inf = String::new();
    io::stdin().read_line(&mut lim_inf).expect("Erro ao ler");
    let lim_inf: i32 = lim_inf.trim().parse().unwrap_or(0);

    println!("Digite o limite superior: ");
    let mut lim_sup = String::new();
    io::stdin().read_line(&mut lim_sup).expect("Erro ao ler");
    let lim_sup: i32 = lim_sup.trim().parse().unwrap_or(0);

    imprimir_terminados_em(digito, lim_inf, lim_sup)
}
