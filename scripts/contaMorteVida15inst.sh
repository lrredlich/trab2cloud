./elastic-mapreduce --create --name "morte ou vida 15 instancias" \
--stream --mapper  'ruby s3n://trab2cloud/map/map_morte_vida.rb' \
     --input   s3n://trab2cloud/input/* \
     --output  s3n://trab2cloud/out/morteVida/temp2 \
     --reducer 'ruby s3n://trab2cloud/reduce/reduce_morte_vida.rb' \
     --num-instances 15 \
--stream --mapper  /bin/cat \
     --input   s3n://trab2cloud/out/morteVida/temp2/* \
     --output  s3n://trab2cloud/out/morteVida/15instancias \
     --reducer 'ruby s3n://trab2cloud/reduce/reduce_morte_vida.rb' \
     --args -D,mapred.reduce.tasks=1 \
