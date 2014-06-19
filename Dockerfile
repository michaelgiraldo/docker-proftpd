FROM ubuntu

RUN apt-get update -y
RUN apt-get install -y proftpd

ADD launch /launch
RUN cat /etc/proftpd/proftpd.conf
ADD proftpd.conf /etc/proftpd/proftpd.conf
RUN sudo chown root:root /etc/proftpd/proftpd.conf

EXPOSE 21
EXPOSE 20

ENTRYPOINT /launch
