function filtrarMaiores(tabela,k)
    local tabela2 = {}
    for i = 1,#tabela do
        if tabela[i] > k then
            table.insert(tabela2,tabela[i])
        end
    end

    print("Elementos maiores que " .. k .. ":")
    for i = 1,#tabela2 do
        print (tabela2[i])
    end
end


print ("Digite a quantidade de elementos (N):")
local q = tonumber(io.read())

local tabela = {}
for i = 1, q do
    print ("Digite o elemento " .. i .. ":")
    local e = tonumber(io.read())
    table.insert(tabela,e)
end

print ("Digite o valor limite (K):")
local k = tonumber(io.read())

filtrarMaiores(tabela,k)

