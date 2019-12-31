FROM nginx:latest
ARG BUILD=default_value
#ADD entrypoint.sh /
#RUN chmod +x /entrypoint.sh
RUN  echo "BUILD NUMBER IS $BUILD" > /usr/share/nginx/html/index.html

#RUN /entrypoint.sh
#CMD ["bash", "/entrypoint.sh"]
#CMD ["nginx","-g","daemon off;"]
