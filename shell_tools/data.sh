
function create_data(){
  for i in `seq $1`; do echo "$i,test_data"; done
}

function create_data_2(){
  seq $1 | xargs -n 1 -I arg echo arg
}
