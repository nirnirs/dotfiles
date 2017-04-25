#!/usr/bin/env bash
echo -n "Enter encryption password:"
read -s password
echo
if [[ ! -d ~/${2} ]]
then
  mkdir ~/${2}
fi
pushd ~/${1}
for f in *
do
  if [[ -f ${f} ]]
  then
    openssl enc -aes-256-cbc -a -salt -in ${f} -out ~/${2}/${f}.enc -pass pass:${password}
  fi
done
popd
