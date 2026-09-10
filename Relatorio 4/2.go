package main
import "fmt"

func main() {

	fmt.Printf("Digite as vendas do 1 trimestre: \n")
	var v1 int
	fmt.Scanln(&v1)

	fmt.Printf("Digite as vendas do 2 trimestre: \n")
	var v2 int
	fmt.Scanln(&v2)

	fmt.Printf("Digite as vendas do 3 trimestre: \n")
	var v3 int
	fmt.Scanln(&v3)

	soma := v1 + v2 + v3

	if soma < 100 {
		fmt.Printf("Meta minima anual nao atingida!")
	} else {
		switch {
    		case soma >= 250:
        		fmt.Printf("Total de vendas: %d \nClassificacao: Top seller", soma)
    		case soma >= 180 && soma < 250:
        		fmt.Printf("Total de vendas: %d \nClassificacao: Senior", soma)
    		default:
        		fmt.Printf("Total de vendas: %d \nClassificacao: Pleno", soma)
  		}
	}

}
