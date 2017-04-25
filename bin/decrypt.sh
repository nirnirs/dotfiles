#!/usr/bin/env bash
echo -n "Enter decryption password:"
read -s password
echo
if [[ ! -d ~/${2} ]]
then
  mkdir ~/${2}
fi
pushd ~/${1}
for f in *.enc
do
  if [[ -f ${f} ]]
  then
    output_file=$(echo ${f} | sed s/\.enc$//)
    openssl enc -d -aes-256-cbc -a -in ${f} -out ~/${2}/${output_file} -pass pass:${password}
    chmod go-rwx ~/${2}/${output_file}
  fi
done
popd
