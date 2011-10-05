# Luciana Rosa Redlic

# Map reduce
morte = 0

vida = 0

prev_key = nil
key_total = 0
j=-1
h = 0

ARGF.each do |line|

   # remove qualquer linha nova
   line = line.chomp

   # quebra cada linha em chave e valor (modelo do map reduce)
   (key, value) = line.split
   

  if key =="morte" then
	morte += value.to_i

  elsif key =="vida" then
	vida += value.to_i
	
end

  



end

  puts "morte " + morte.to_s
  puts "vida " + vida.to_s

