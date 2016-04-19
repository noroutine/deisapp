FROM debian:jessie

RUN apt-get update -qq
RUN apt-get install -qq openjdk-7-jdk tomcat7

ADD entrypoint.sh /entrypoint.sh
ADD deisapp-webapp/target/deisapp.war /var/lib/tomcat7/webapps/deisapp.war

EXPOSE 8080

ENTRYPOINT [ "/bin/bash", "/entrypoint.sh" ]