FROM nginx:latest
ENV BULID=1
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
RUN /entrypoint.sh
ENTRYPOINT ["sh", "-c", "/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
#ENTRYPOINT ["/bin/bash", "-c", " printenv BULID  > /usr/share/nginx/html/index.html"]

