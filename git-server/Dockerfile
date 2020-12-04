FROM alpine

RUN apk add git openssh-server

RUN adduser -h /srv/git -s /usr/bin/git-shell -D git

RUN passwd -u git

RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config

RUN cd /etc/ssh/ && ssh-keygen -A

CMD [ "/usr/sbin/sshd", "-D", "-e" ]

