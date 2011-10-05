./elastic-mapreduce --create --name "conta 10 palavras mais usada com 1 instancia" \
--stream --mapper  'ruby s3n://trab2cloud/map/map_conta_palavras_diferentes.rb' \
     --input   s3n://trab2cloud/input/* \
     --output  s3n://trab2cloud/out/10palavras+usadas/1instancia \
     --reducer 'ruby s3n://trab2cloud/reduce/reduce_conta_10palavras+_usadas.rb' \
     --num-instances 2 \

