FROM i386/ubuntu

MAINTAINER phanNT
RUN apt-get update
RUN apt-get install xinetd -y

RUN useradd -m resolve

COPY ./resolve /etc/xinetd.d/resolve
COPY ./share/flag /flag
COPY ./share/run.sh /home/resolve/run.sh
COPY ./share/resolve_plus /home/resolve/resolve_plus

COPY ./init.sh /init.sh

RUN chmod +x /init.sh
RUN chmod +x /home/resolve/run.sh

RUN chown -R root:resolve /home/resolve
RUN chmod -R 755 /home/resolve
RUN chmod 644 /flag

RUN echo resolve > /etc/cron.deny
RUN chmod 644 /etc/cron.deny
RUN chmod 644 /etc/xinetd.d/resolve

RUN chmod -R 774 /var/tmp
RUN chmod -R 774 /tmp
RUN chmod -R 774 /dev
RUN chmod -R 774 /run
RUN chmod 1733 /dev/shm

WORKDIR /home/resolve
 
CMD ["/init.sh"]

EXPOSE 1338
