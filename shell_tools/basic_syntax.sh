
function loop_command(){
  if [ -z $2 ]; then
    loop_num=10
  else
    loop_num=$2
  fi

  i=0
  while [ $i -lt $loop_num ]; do
    $1
    i=`expr $i + 1`
  done
}
