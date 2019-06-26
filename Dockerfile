FROM openjdk:12

COPY nvdocker.jar /opt
WORKDIR /opt

ADD https://get.nerd.vision/java/latest/nerdvision.jar /opt/nerdvision.jar

ENV JAVA_OPTS="-javaagent:/opt/nerdvision.jar=api.key=6aa7d5a332d0bb6612443f5afbe9cdd3c842ef0cd37dad88e1ebc819a3db62996e9a44283838520e7b12373294f05c4f248ca18d423d05a25790e86a1d97a858"

CMD java $JAVA_OPTS -jar /opt/nvdocker.jar
