# Luciana Rosa Redlich

# Map para contar palavraas  vida e morte


# pega cada um dos elementos do vetor de entrada
ARGF.each do |line|

   # remove any newline
   line = line.chomp

  #tira todos os caracteres que ano sao letras
  words = line.split(/\W+/)
  words.each do |word|
    word=word.downcase
    #escreve so as palavras vida e morte
    if word == "vida" || word == "morte" then
      puts word + " 1"
    end  
  end
  

end