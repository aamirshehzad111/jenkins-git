FROM nginx:latest
ENV BULID=1
#ADD entrypoint.sh /
#RUN chmod +x /entrypoint.sh
#RUN /entrypoint.sh
#CMD ["bash", "/entrypoint.sh"]
ADD entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh
ENTRYPOINT ["/sbin/entrypoint.sh"]
