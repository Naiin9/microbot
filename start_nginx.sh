#!/bin/sh
hostname=`hostname -f`
ip=`ip addr show | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}' | cut -d/ -f1 | head -n 1`

sed -i "s/NODE_NAME/${MY_NODE_NAME}/" /usr/share/nginx/html/index.html
sed -i "s/NODE_IP/${MY_NODE_IP}/" /usr/share/nginx/html/index.html
sed -i "s/POD_NAME/${MY_POD_NAME:=${hostname}}/" /usr/share/nginx/html/index.html
sed -i "s/POD_IP/${MY_POD_IP:=${ip}}/" /usr/share/nginx/html/index.html
/usr/sbin/nginx -g "daemon off;"
