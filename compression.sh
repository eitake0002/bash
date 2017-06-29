
#------------------------------------
# Compression commands
#------------------------------------

# Description:
#   bzip2 compression
# Usage:
#   bzip2-comp <target_item>
# Example:
#   bzip2-comp my_scripts
function tar-bzip2-comp()
{
    tar jcvf $1.tar.bz2 $2
}

# Description:
#   Check content in tar compressed archive.
# Usage:
#   tar-bzip2-check-content <archive file>
# Example:
#   tar-bzip2-check-content my_script.tar.bz2
function tar-bzip2-check-content()
{
    tar jtvf $1
}

# Description:
#   Gzip compression.
# Usage:
#   gzip-comp <target_item>
# Example:
#   gzip-comp my_scripts
function tar-gzip-comp()
{
    tar zcvf $1.tar.gz $2
}
