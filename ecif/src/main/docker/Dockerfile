FROM java:8
MAINTAINER guantong
VOLUME /tmp
ADD ecif-0.0.1-SNAPSHOT.jar ecif-demo.jar
RUN bash -c 'touch /ecif-demo.jar'
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/ecif-demo.jar"]
