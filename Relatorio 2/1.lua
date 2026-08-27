function gerarTabelaPotencias(m,n,b)
    for i = m, n do
        local r = b^i
        print(b .. " ^ " .. i .. " = " .. r)
    end
end

print ("Digite o exponencial incial (M): ")
local m = tonumber(io.read())
print ("Digite o exponencial final (N): ")
local n = tonumber(io.read())
print ("Digite a base: ")
local b = tonumber(io.read())

gerarTabelaPotencias(m,n,b)
