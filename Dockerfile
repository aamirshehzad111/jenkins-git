FROM nginx:latest
ENV BULID=${BuildNumber}
RUN env | grep BULID  > /usr/share/nginx/html/index.html

