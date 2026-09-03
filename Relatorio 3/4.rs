use std::io;

fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64
{

    let pf = (((prova1 + prova2)/2.0)*0.6) + (redacao*0.4);
    return pf;
}

fn main() 
{   
    println!("Digite a nota da Prova Teorica 1: ");
    let mut p1 = String::new();
    io::stdin().read_line(&mut p1).expect("Erro ao ler");
    let p1: f64 = p1.trim().parse().unwrap_or(0.0);

    println!("Digite a nota da Prova Teorica 2: ");
    let mut p2 = String::new();
    io::stdin().read_line(&mut p2).expect("Erro ao ler");
    let p2: f64 = p2.trim().parse().unwrap_or(0.0);

    println!("Digite a nota da Redacao: ");
    let mut r = String::new();
    io::stdin().read_line(&mut r).expect("Erro ao ler");
    let r: f64 = r.trim().parse().unwrap_or(0.0);

    let pf = calcular_pontuacao(p1,p2,r);

    if pf >= 60.0
    {
        println!("\nParabens! Candidato aprovado no processo seletivo.");
        println!("Pontuacao final: {}", pf);
    }
    else
    {
        println!("\nInfelizmente o candidato nao atingiu a pontuacao minima de aprovacao.");
        println!("Pontuacao final: {}", pf);
    }
}
