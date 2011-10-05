# Luciana Rosa Redlic
# Reduce para contar a palavra mais usada - é o reduce do map que conta palavras diferentes.


biggest_key = nil
biggest_value = 0


prev_key = nil
key_total = 0

ARGF.each do |line|

   # remove qualquer linha nova
   line = line.chomp

   # quebra cada linha em chave e valor (modelo do map reduce)
   (key, value) = line.split

   # checa se tem uma chave nova ou se ela ja foi encontrada
   if prev_key && key != prev_key && key_total > 0

      # escreve a chave e o total

      if key_total > biggest_value then 
        biggest_value = key_total
        biggest_key = prev_key
      end
   

      # pega uma chave nova
      prev_key = key
      key_total = 0

  
   elsif ! prev_key
      prev_key = key

   end


   # adciona mais um ao contador da chave atual
   key_total += value.to_i

end

puts biggest_key + " " + biggest_value.to_s
