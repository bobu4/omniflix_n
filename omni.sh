#!/bin/bash
val='omniflixvaloper1r7ay6ff5hudenmw0ryv0d3z2h5hc79zjakyt50'
del='omniflix1r7ay6ff5hudenmw0ryv0d3z2h5hc79zjsyk248'
pass=''
wal_name='Darios'
echo -e "${pass}\n" | omniflixhubd tx distribution withdraw-rewards ${val} --chain-id flixnet-3 --from ${wal_name} --commission --gas auto -y
bal=$(omniflixhubd query bank balances ${del} -o json | jq -r '.balances  | .[].amount')
echo -e "${pass}\n" | omniflixhubd tx staking delegate ${val} ${bal}uflix --chain-id flixnet-3 --from ${wal_name} --gas auto -y
