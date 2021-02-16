FROM alpine

RUN apk add --no-cache python2 && apk add --no-cache py-pip

COPY fwatchdog /usr/bin/fwatchdog
RUN chmod +x /usr/bin/fwatchdog

ENV fprocess="python2 entrypoint.py"
COPY entrypoint.py /

EXPOSE 8080
CMD [ "fwatchdog" ]