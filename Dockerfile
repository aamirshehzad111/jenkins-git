FROM nginx:latest
ENV BULID=${BuildNumber}
RUN printenv | grep BULID  > /usr/share/nginx/html/index.html
ENTRYPOINT printenv | grep BULID  > /usr/share/nginx/html/index.html
