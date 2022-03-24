FROM amd64/ubuntu:20.04

MAINTAINER rushbnt
RUN apt-get update
RUN apt-get install xinetd -y

RUN useradd -m other_over

COPY ./other_over /etc/xinetd.d/other_over
COPY ./share/flag /flag
COPY ./share/run.sh /home/other_over/run.sh
COPY ./share/other_over /home/other_over/other_over

COPY ./init.sh /init.sh

RUN chmod +x /init.sh
RUN chmod +x /home/other_over/run.sh

RUN chown -R root:other_over /home/other_over
RUN chmod -R 755 /home/other_over
RUN chmod 644 /flag

RUN echo solve > /etc/cron.deny
RUN chmod 644 /etc/cron.deny
RUN chmod 644 /etc/xinetd.d/other_over

RUN chmod -R 774 /var/tmp
RUN chmod -R 774 /tmp
RUN chmod -R 774 /dev
RUN chmod -R 774 /run
RUN chmod 1733 /dev/shm

WORKDIR /home/other_over
 
CMD ["/init.sh"]

EXPOSE 1337
