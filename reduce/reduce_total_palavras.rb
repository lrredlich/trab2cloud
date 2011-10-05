# Luciana Rosa Redlic
# Reduce ( conta o numero total de palavras)


key_total = 0

ARGF.each do |line|

   # remove qualquer linha nova
   line = line.chomp

   # quebra cada linha em chave e valor (modelo do map reduce)
   (key, value) = line.split
	
   # adciona mais um ao contador da chave atual
   key_total += value.to_i


end
puts  key_total
