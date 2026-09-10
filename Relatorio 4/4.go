package main
import "fmt"

func validarIngresso(setor string, codigo int) bool{
	if setor == "VIP" && codigo == 2026 {
		return true
	} else {
		return false
	}
}

func main() {

	for true {

		fmt.Printf("Digite o setor do ingresso: \n")
		var setor string
		fmt.Scanln(&setor)

		fmt.Printf("Digite o codigo do ingresso: \n")
		var codigo int
		fmt.Scanln(&codigo)

		status := validarIngresso(setor, codigo)

		if status == true {
			fmt.Printf("Acesso liberado a area VIP!")
			break
		} else {
			fmt.Printf("Ingresso ou setor invalido. Tente novamente\n")
		}
	}

}
