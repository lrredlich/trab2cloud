./elastic-mapreduce --create --name "conta total de palavras 15 instancias" \
--stream --mapper  'ruby s3n://trab2cloud/map/map_conta_palavras_diferentes.rb' \
     --input   s3n://trab2cloud/input/* \
     --output  s3n://trab2cloud/out/palavra+usada/temp2 \
     --reducer 'ruby s3n://trab2cloud/reduce/reduce_conta_palavra+_usada.rb' \
     --num-instances 15 \


