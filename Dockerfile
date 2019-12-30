FROM nginx:latest
ENV BULID=1
RUN printenv BULID  > /usr/share/nginx/html/index.html
ENTRYPOINT ["/bin/bash", "-c", " printenv BULID  > /usr/share/nginx/html/index.html"]

