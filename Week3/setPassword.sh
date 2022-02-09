#!/bin/bash
read -p "Folder Name : " foldername
mkdir "$foldername"
read -sp "Password : " password
echo "$password" | sha256sum >>$foldername/password.txt