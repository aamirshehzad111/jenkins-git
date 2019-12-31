FROM nginx:latest
ARG BUILD=1
#ADD entrypoint.sh /
#RUN chmod +x /entrypoint.sh
RUN  echo $BUILD > /usr/share/nginx/html/index.html

#RUN /entrypoint.sh
#CMD ["bash", "/entrypoint.sh"]
#CMD ["nginx","-g","daemon off;"]
