FROM nginx:latest
ENV BULID=1
RUN env | grep BULID  > /usr/share/nginx/html/index.html
