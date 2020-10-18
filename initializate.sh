#! /bin/bash

if [[ -z $WITHREC ]]; then
mv /nginxworec.conf /usr/local/nginx/conf/nginx.conf
else
mv /nginxwrec.conf /usr/local/nginx/conf/nginx.conf
fi

currentpass=$(cat /usr/local/nginx/conf/default | grep 'arg_psk' | sed "s/if (\$arg_psk = '//g" | sed "s/') {//g")

sed -i "s/arg_psk = '$(echo $currentpass)/arg_psk = '$(echo $RTMP_PASS)/g" /usr/local/nginx/conf/default

sed -i "s/psk=$(echo $currentpass)/psk=$(echo $RTMP_PASS)/g" /usr/local/nginx/conf/nginx.conf