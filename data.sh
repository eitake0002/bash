#!/bin/sh

# Description:
#   Create number data.
# Usage:
#   create-num-data <number_of_lines>
# Example:
#   create-num-data 100
function create-num-data()
{
  seq $1
}

# Description:
#   Crete num data with 0 padding.
# Usage:
#   create-num-data-with-padding <number_of_lines>
# Example:
#   create-num-data-with-padding 100
function create-num-data-with-padding()
{
  seq -w $1
}

# Description:
#   Create num data with fixec 0 padding.
# Usage:
#   create-num-data-with-padding-fixed 05 100
function create-num-data-with-padding-fixed()
{
  padding_num=$1
  line_nums=$2
  seq -f %${padding_num}g ${line_nums}
}


# Description:
#   Create test data with text.
# Usage:
#   create-test-data <line_number> <text>
# Example:
#   create-test-data 100 test
function create-text-data()
{
    line_num=$1
    txt=$2

    i=1;
    while [ $i -le ${line_num} ]; do
        echo "$i,${txt}"; i=$(expr $i + 1);
    done
}

# Description:
#   Generate random string.
# Usage:
#   generate-random-string <string num> <line num>
# Example:
#   generate-random-string 10 20
function generate-random-string()
{
  number_of_string=$1
  number_of_lines=$2
  cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${number_of_string} | head -n ${number_of_lines} | sort | uniq
}
