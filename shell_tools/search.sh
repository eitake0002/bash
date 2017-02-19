
function list-all(){
  ls -1R | grep -v "^\s*$" 
}

function list-file-size(){
  find . -prune .git -type f -printf "%f\t%s\tbyte\t%TY-%Tm-%Td\t%TH:%TM:%TS\n"
}

function search-prune(){
  find . -name .git -prune -o -type f
}

function search-depth(){
  find . -maxdepth 3 -type d
}
