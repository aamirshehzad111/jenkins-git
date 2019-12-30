FROM nginx:latest
ENV BULID=1
RUN env | grep BUILD  > /usr/share/nginx/html/index.html
