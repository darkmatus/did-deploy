FROM docker:stable

RUN apk --no-cache add git py-pip python-dev libffi-dev openssl-dev gcc libc-dev make bash
RUN pip install docker-compose

#COPY docker-entrypoint.sh /usr/local/bin

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]
