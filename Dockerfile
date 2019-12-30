FROM nginx:latest
ENV BULID=1
RUN env | grep BULID  > /usr/share/nginx/html/index.html
ENTRYPOINT ["/bin/bash", "-c", "env | grep BULID  > /usr/share/nginx/html/index.html"]

