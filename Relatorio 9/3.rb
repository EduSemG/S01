# steins gate


# classe 1 (composicao)
class PhoneWave
  def enviar_dmail(mensagem)
    puts "D-Mail: \"#{mensagem}\""
    puts "Mensagem enviada para o passado!"
  end
end


# classe 2 (agregacao)
class MembroDoLab
  # get
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end


class LaboratorioDeGadgets

  def initialize
    # comp
    @phonewave = PhoneWave.new

    # agre
    @membros = []
  end

  # imprime n e nome de cada um usando .each
  def admitir(membro)
    @membros << membro
    puts "Lab Mem #{membro.numero} #{membro.nome} foi admitido no laboratorio"
  end

  def experimento(mensagem)
    puts "\nExperimento iniciado"
    puts "Membros presentes:"
    @membros.each do |membro|
      puts "  Lab Mem ##{membro.numero} - #{membro.nome}"
    end

    # e usa o phonewave guardado em @phonewave
    @phonewave.enviar_dmail(mensagem)
  end
end


# main

# membros
okabe = MembroDoLab.new(1, "Rintaro")
mayuri = MembroDoLab.new(2, "Mayuri")

lab = LaboratorioDeGadgets.new

lab.admitir(okabe)
lab.admitir(mayuri)

lab.experimento("Eu sou o cientista louco Hououin")


# item 6
# composição (PhoneWave) significa que o objeto pertence so ao lab e morre junto com ele
# agregação (MembrosDoLab) significa que os membros existem independentes e continuam vivos fora do lab caso ele morre
