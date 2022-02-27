#!/bin/bash
cat /etc/passwd | grep -w "bin/bash" > binbash.txt
awk 'BEGIN {

    FS=":";

    print "________________________________";

    print "| \033[34mUsername            \033[0m | \033[34mUserIP  \033[0m | \033[34mGroup Ip\033[0m | \033[34mHome                             \033[0m | \033[34mShell               \033[0m |";

}

{
    

    printf("| \033[33m%-20s\033[0m | \033[35m%-8s\033[0m | \033[35m%-8s\033[0m | \033[35m%-33s\033[0m | \033[35m%-20s\033[0m |\n", $1, $3, $4, $6, $7);


}

END {

    print("________________________________");

}' binbash.txt


