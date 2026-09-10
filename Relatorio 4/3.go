package main
import "fmt"

func gerarEscalaPlantao(n int) {
	i := 1
	dia := 1
	for i <= n && dia <= 31{
		fmt.Printf("Plantao %d: Dia %d do mês \n", i, dia)
		i++
		dia = dia + 4
	}

}

func main() {

	fmt.Printf("Digite a quantidade de plantoes necessarios: \n")
	var n int
	fmt.Scanln(&n)

	gerarEscalaPlantao(n)
	
}
