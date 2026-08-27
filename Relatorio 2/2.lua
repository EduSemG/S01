function contarOcorrencias(tabela,a)
    cont = 0
    for i = 1, #tabela do
        if a == tabela[i] then
            cont = cont + 1
        end
    end
    print ("O numero " .. a .. " aparece " .. cont .. " vez(es) na tabela")
end

print ("Digite a quantidade de elementos (N): ")
local n = tonumber(io.read())

local tabela = {}
for i = 1, n do
    print ("Digite o elemento " .. i .. ":")
    local e = tonumber(io.read())
    table.insert(tabela,e)
end

print ("Digite o numero a ser buscado:")
local a = tonumber(io.read())

contarOcorrencias(tabela,a)
