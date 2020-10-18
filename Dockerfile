FROM dottgonzo/linux-rtmp-streaming
RUN mkdir /data
COPY ./default /usr/local/nginx/conf/default
COPY ./nginxworec.conf /
COPY ./nginxwrwc.conf /
COPY ./initializate.sh /initializate.sh
CMD /initializate.sh && /usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf
