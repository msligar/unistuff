#!/bin/bash
read -p "Folder Name : " foldername
mkdir "$foldername"
read -sp "Password : " password
echo "$password" | sha256sum >>password.txt
mv password.txt $foldername