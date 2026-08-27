function calcularMedia(a,b)
    print ("Resultado: ")
    print ((a + b) / 2)
end

function encontrarMaior(a,b)
    print ("Resultado: ")
    if (a > b) then
        print (a)
    else
        print (b)
    end
end

function calcularDiferencaAbsoluta(a,b)
    local r
    r = a - b
    print ("Resultado: ")
    if (r > 0) then
        print (r)
    else
        print (r * -1)
    end
end

function analisarNumeros(n1,n2,operacao)
    if operacao == "media" then
        calcularMedia(n1,n2)
    else 
        if operacao == "maior" then
        encontrarMaior(n1,n2)
        else
            if operacao == "diferenca" then
        calcularDiferencaAbsoluta(n1,n2)
            else
                print ("Operacao invalida!")
            end
        end
    end
end

print("Digite o primeiro numero:")
local n1 = tonumber(io.read())

print("Digite o segundo numero:")
local n2 = tonumber(io.read())

print("Digite a operação (media,maior ou diferenca):")
local operacao = io.read()

analisarNumeros(n1,n2,operacao)
