FROM i386/ubuntu:16.04

MAINTAINER phanNT
RUN apt-get update
RUN apt-get install xinetd -y

RUN useradd -m solve

COPY ./solve /etc/xinetd.d/solve
COPY ./share/flag /flag
COPY ./share/run.sh /home/solve/run.sh
COPY ./share/solve /home/solve/solve

COPY ./init.sh /init.sh

RUN chmod +x /init.sh
RUN chmod +x /home/solve/run.sh

RUN chown -R root:solve /home/solve
RUN chmod -R 755 /home/solve
RUN chmod 644 /flag

RUN echo solve > /etc/cron.deny
RUN chmod 644 /etc/cron.deny
RUN chmod 644 /etc/xinetd.d/solve

RUN chmod -R 774 /var/tmp
RUN chmod -R 774 /tmp
RUN chmod -R 774 /dev
RUN chmod -R 774 /run
RUN chmod 1733 /dev/shm

WORKDIR /home/solve
 
CMD ["/init.sh"]

EXPOSE 1336
