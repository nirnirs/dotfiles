#!/usr/bin/env bash
echo -n "Enter encryption password:"
read -s password
echo
if [[ ! -d ~/.ssh_enc ]]
then
  mkdir ~/.ssh_enc
fi
pushd ~/.ssh
for f in *
do
  openssl enc -aes-256-cbc -a -salt -in ${f} -out ~/.ssh_enc/${f}.enc -pass pass:${password}
done
popd
