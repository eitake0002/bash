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
