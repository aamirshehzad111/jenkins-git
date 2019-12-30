FROM nginx:latest
ENV BULID=1
RUN env | grep 'BUILD_NUMBER'  > /usr/share/nginx/html/index.html
