FROM alpine

RUN apk add build-base inotify-tools libgit2-dev

COPY . /usr/local/src/stagit

RUN cd /usr/local/src/stagit \
    && make \
    && make install \
    && rm -rf /usr/local/src

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

CMD [ "stagit-sync" ]
