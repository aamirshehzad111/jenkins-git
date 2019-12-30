FROM nginx:latest
ENV BULID
RUN printenv | grep BULID  > /usr/share/nginx/html/index.html

