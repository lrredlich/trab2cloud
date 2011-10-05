./elastic-mapreduce --create --name "Conta palavra mais usada 2 instancias" \
--stream --mapper  'ruby s3n://trab2cloud/map/map_conta_palavras_diferentes.rb' \
     --input   s3n://trab2cloud/input/* \
     --output  s3n://trab2cloud/out/palavra+usada/2instancias \
     --reducer 'ruby s3n://trab2cloud/reduce/reduce_conta_palavra+_usada.rb' \
     --num-instances 2 \

