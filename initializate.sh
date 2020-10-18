#! /bin/bash


currentpass=$(cat /usr/local/nginx/conf/default | grep 'arg_psk' | sed "s/if (\$arg_psk = '//g" | sed "s/') {//g")

sed -i "s/arg_psk = '$(echo $currentpass)/arg_psk = '$(echo $RTMP_PASS)/g" /usr/local/nginx/conf/default

sed -i "s/psk='$(echo $currentpass)/psk='$(echo $RTMP_PASS)/g" /usr/local/nginx/conf/nginx.conf