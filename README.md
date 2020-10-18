docker run --network host -e "RTMPURI=rtmp://localhost:3345/live/aaa?psk=rtmptest" registry.gitlab.com/livemachine/fakeh264flux:latest

http://localhost:3434/hls/aaa.m3u8