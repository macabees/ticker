FROM debian

WORKDIR /
ADD https://raw.githubusercontent.com/pstadler/ticker.sh/master/ticker.sh .

RUN apt-get -y update \ 
    && apt-get -y install \
        jq curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && chmod u+x ticker.sh

ENV TERM=xterm-256color
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

ENTRYPOINT ["./ticker.sh"]
