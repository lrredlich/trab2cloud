./elastic-mapreduce --create --name "morte ou vida 1 instancia" \
--stream --mapper  'ruby s3n://trab2cloud/map/map_morte_vida.rb' \
     --input   s3n://trab2cloud/input/* \
     --output  s3n://trab2cloud/out/morteVida/1instancia\
     --reducer 'ruby s3n://trab2cloud/reduce/reduce_morte_vida.rb' \
     --num-instances 2 \

