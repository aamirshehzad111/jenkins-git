FROM nginx:latest
ENV BULID=1
ENTRYPOINT ["/bin/bash", "-c", "printenv BUILD"]
RUN printenv BULID  > /usr/share/nginx/html/index.html
#CMD ["/bin/bash", "-c", "printenv BULID >  /usr/share/nginx/html/index.html"]
#ENTRYPOINT ["/bin/bash", "-c", " printenv BULID  > /usr/share/nginx/html/index.html"]

