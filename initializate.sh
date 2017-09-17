#! /bin/bash


currentpass=$(cat /usr/local/nginx/conf/default | grep 'arg_psk' | sed "s/if (\$arg_psk = '//g" | sed "s/') {//g")

sed -i "s/arg_psk = '\"$currentpass\"/arg_psk = '\"$RTMP_PASS\"/g" /usr/local/nginx/conf/default