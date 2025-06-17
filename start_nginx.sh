#!/bin/sh
sed -i "s/NODE_NAME/${MY_NODE_NAME}/" /usr/share/nginx/html/index.html
sed -i "s/NODE_IP/${MY_NODE_IP}/" /usr/share/nginx/html/index.html
sed -i "s/POD_NAME/${MY_POD_NAME}/" /usr/share/nginx/html/index.html
sed -i "s/POD_IP/${MY_POD_IP}/" /usr/share/nginx/html/index.html
/usr/sbin/nginx -g "daemon off;"
