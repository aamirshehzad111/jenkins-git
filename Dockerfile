FROM nginx:latest
ENV BULID=1
RUN printenv | grep BULID  > /usr/share/nginx/html/index.html
ENTRYPOINT printenv | grep BULID  > /usr/share/nginx/html/index.html
