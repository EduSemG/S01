# YLIA


# classe base
class Instrumentista

  # getter
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  # metodo abstrato
  def interpretar(peca)
    raise NotImplementedError, "#{self.class} deve implementar o metodo interpretar"
  end
end


# classe filha
class Solista < Instrumentista
  def interpretar(peca)
    puts "\n#{nome} (#{instrumento}) toca '#{peca}' e conduz a melodia principal"
  end
end


# classe filha
class Acompanhador < Instrumentista
  def interpretar(peca)
    puts "\n#{nome} (#{instrumento}) toca '#{peca}' e acompanha o ritmo do solista"
  end
end


# classe regetne
class Regente
  def initialize(nome)
    @nome = nome
    @orquestra = []
  end

  def convocar(instrumentista)
    @orquestra << instrumentista
  end

  # polimorfismo
  def reger(peca)
    puts "\nO regente #{@nome} rege a peca '#{peca}'."
    @orquestra.each do |instrumentista|
      instrumentista.interpretar(peca)
    end
  end

  # .map
  def escalacao
    @orquestra.map do |instrumentista|
      "#{instrumentista.class}: #{instrumentista.nome}"
    end
  end
end


# main

kaori  = Solista.new("Kaori Miyazono", "Violino")
kousei = Acompanhador.new("Kousei Arima", "Piano")
regente = Regente.new("Takeshi")

regente.convocar(kaori)
regente.convocar(kousei)

regente.reger("Sonata para Violino 1: Bethoven")

puts "\nEscalacao"
regente.escalacao.each do |texto|
  puts texto
end

# item 6
# se criar instrumentista diretamente:
# generico = Instrumentista.new("Fulano", "Flauta")
# vai gerar um NotImplementedError pq a classe base nao implementa o metodo diretamente

