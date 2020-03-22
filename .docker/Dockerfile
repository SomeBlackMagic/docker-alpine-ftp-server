FROM alpine:3.7
RUN apk --no-cache add vsftpd
COPY .docker/config/vsftpd.conf /etc/vsftpd/vsftpd.conf

COPY .docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY .docker/cmd.sh /cmd.sh
RUN chmod +x /cmd.sh

EXPOSE 21 21000-21010
VOLUME /ftp/ftp

ENTRYPOINT /entrypoint.sh
CMD /cmd.sh