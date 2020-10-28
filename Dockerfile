FROM alpine

COPY start.sh /home/start.sh


RUN apk update \
    && apk add vlc
RUN sed -i 's/geteuid/getppid/' /usr/bin/vlc
RUN chmod +x /home/start.sh


CMD /home/start.sh
# Testing
