#!/usr/bin/env bash
echo -n "Enter decryption password:"
read -s password
echo
if [[ ! -d ~/.ssh ]]
then
  mkdir ~/.ssh
fi
pushd ~/.ssh_enc
for f in *.enc
do
  output_file=$(echo ${f} | sed s/\.enc$//)
  openssl enc -d -aes-256-cbc -a -in ${f} -out ~/.ssh/${output_file} -pass pass:${password}
  chmod go-rwx ~/.ssh/${output_file}
done
popd
