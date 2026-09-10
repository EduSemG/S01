package main
import "fmt"

func ValidarCodigoRastreio(codigo string) (bool, string) {
	if len(codigo) == 10 {
    return true, "Codigo de rastreio registrado no sistema!"
	} else {
    return false, "Erro: O codigo de rastreio deve ter exatamente 10 caracteres."
}
}

func main() {

	fmt.Printf("Digite o código de rastreio: ")
	var codigo string
	fmt.Scanln(&codigo)

	status, msg := ValidarCodigoRastreio(codigo)

	if status == true {
		fmt.Printf("\n%s",msg)
	} else {
		fmt.Printf("\n%s",msg)
	}
}
