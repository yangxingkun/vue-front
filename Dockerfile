FROM nginx
# 对外的环境
LABEL name="vue-front"

LABEL version="1.0"
# COPY  ./dist/ /www/server/nginx/html
COPY  ./dist/ /www/wwwroot/vue-front;
COPY ./vue-front.conf /www/server/panel/vhost/nginx/
EXPOSE 80

# /www/server/nginx/conf/nginx.conf
# /www/server/panel/vhost/nginx/*.conf