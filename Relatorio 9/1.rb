# Afterlife

# classe base
class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome

    @_preco = preco
  end

  # getter e setter manual
  def preco
    @_preco
  end

  def preco=(novo_valor)
    # excecao setter
    if novo_valor.is_a?(Numeric) && novo_valor >= 5 && novo_valor <= 200
      @_preco = novo_valor
    else
      puts "Preco invalido!"
    end
  end

  # metodo ficha
  def ficha
    "Drink: #{@nome} | Preço: R$ #{@_preco}"
  end
end


# classe filha
class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
    "#{super} | Homenagem a: #{@lenda}"
  end
end


# main

# array
cardapio = 
[
  CoquetelAfterlife.new("Caipirinha", 35),
  DrinkDeLenda.new("Silver Daniels", 50, "Johnny Silverhand"),
  DrinkDeLenda.new("Welles Vodka", 45, "Jackie Welles")
]

puts "Cardápio do Afterlife (Fichas)"

cardapio.each do |drink|
  puts drink.ficha
end

puts "\nTestando o setter de preço..."

cardapio[1].preco = 500


cardapio[1].preco = 80

puts "\nItem atualizado:"
puts cardapio[1].ficha


# teste item 6
# se fizer a linha embaixo o programa vai dar erro pq attr_reader nao aceita atribuicao
# cardapio[0].nome = "V"
