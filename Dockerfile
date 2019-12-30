FROM nginx:latest
ENV BULID=1
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
RUN /entrypoint.sh
CMD ["/bin/bash","-c", "/entrypoint.sh"]


#RUN /entrypoint.sh
#CMD ["bash", "/entrypoint.sh"]
#CMD ["nginx","-g","daemon off;"]
