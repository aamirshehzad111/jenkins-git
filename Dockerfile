FROM nginx:latest
ENV BULID $BULID 
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
#RUN /entrypoint.sh
CMD ["/bin/bash", "-c", "/entrypoint.sh"]
#ENTRYPOINT ["/bin/bash", "-c", " printenv BULID  > /usr/share/nginx/html/index.html"]

