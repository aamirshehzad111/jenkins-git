FROM nginx:latest
ENV BULID=1
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "-c", "/entrypoint.sh"]
#CMD ["/bin/bash", "-c", "printenv BULID >  /usr/share/nginx/html/index.html"]
#ENTRYPOINT ["/bin/bash", "-c", " printenv BULID  > /usr/share/nginx/html/index.html"]

