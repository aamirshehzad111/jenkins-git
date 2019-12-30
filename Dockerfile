FROM nginx:latest
ENV BULID=1
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
RUN /entrypoint.sh
ENTRYPOINT ["bash", "echo 'hello world'"]







#RUN /entrypoint.sh
#CMD ["bash", "/entrypoint.sh"]
#CMD ["nginx","-g","daemon off;"]
