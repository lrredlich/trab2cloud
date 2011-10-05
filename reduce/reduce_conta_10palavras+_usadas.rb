# Luciana Rosa Redlic
# Reduce do contador 

aux_value = 0 
aux_key = nil 
aux_value2 = 0 
aux_key2 = nil 
biggest_keys = [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
biggest_values = [0, 0, 0, 0, 0, 0 , 0, 0 ,0 ,0 ]


prev_key = nil
key_total = 0
j=-1
h = 0

ARGF.each do |line|

   # remove qualquer linha nova
   line = line.chomp

   # quebra cada linha em chave e valor (modelo do map reduce)
   (key, value) = line.split
   

   # checa se tem uma chave nova ou se ela ja foi encontrada
   if prev_key && key != prev_key && key_total > 0

      # escreve a chave e o total


 

      for i in (0..9)do
              
        if key_total > biggest_values[i].to_i then

          aux_value = biggest_values[i]
          aux_key = biggest_keys[i];
          biggest_values[i] = key_total
          biggest_keys[i] = prev_key
          j = i
	break
        end
        
      end
      if j > -1 && j< 9 then 
     
        for l in ((j+1).. 9)do
	
          aux_value2  = biggest_values[l];
          aux_key2 = biggest_keys[l]
          biggest_values[l] = aux_value
          biggest_keys[l] = aux_key
          aux_value =aux_value2 
          aux_key = aux_key2
        end
	j= -1
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

for i in (0..9)do
   
     puts biggest_keys[i].to_s + " " + biggest_values[i].to_s    
        
      end
