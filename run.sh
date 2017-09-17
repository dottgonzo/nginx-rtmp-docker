#! /bin/bash

docker run -p 3434:80 -p 3345:1935 -v /tmp/rtmptest:/data -e RTMP_PASS=rtmptest dottgonzo/nginx-rtmp-docker