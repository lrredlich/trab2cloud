# Luciana Rosa Redlich
# Map para contar o total de palavras 


# pega cada um dos elementos do vetor de entrada
ARGF.each do |line|

   # remove any newline
   line = line.chomp

	#tira todos os caracteres que ano sao letras
	words = line.split(/\W+/)
	words.each do |word|
		word="palavra"
  		puts word + " 1"
	end
	

end


	
