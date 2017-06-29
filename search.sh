
# Description:
#   List all items.
# Usage:
#   list-all
function list-all(){
  ls -1R | grep -v "^\s*$" 
}

# Description:
#   Search file size
# Usage:
#   search-file-size
function search-file-size(){
  find . -type f -printf "%f\t%s\tbyte\t%TY-%Tm-%Td\t%TH:%TM:%TS\n"
}

# Description:
#   Exclude specified file | directory.
# Usage:
#   search-prune <exclude_file|directory> <search_file_type>
# Example:
#   search-prune .git file
function search-prune(){

  exclude_item=$1
  file_type=$2

  if [ "${file_type}" = "directory" ]; then
    file_type_opt='d'
  else
    file_type_opt='f'
  fi

  find . -name ${exclude_item} -prune -o -type f
}

# Description:
#   Search file type with directory depth.
# Usage:
#   search-depth <number_of_depth> <file_type>
# Example:
#   search-depth 3 directory
function search-depth(){
  depth_num=$1
  file_type=$2

  if [ "${file_type}" = "directory" ]; then
    file_type_opt='d'
  else
    file_type_opt='f'
  fi

  find . -maxdepth ${depth_num} -type ${file_type}
}

# Description:
#  Search(grep) word in multiple files from current directory.
# Usage:
#   search-word <search_word>
# Example:
#   search-word my_word
function search-word() {
  find ./ -type f -print | xargs grep "$1"
}
