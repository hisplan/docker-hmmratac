FROM openjdk:8-jre

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)"

ENV HMMRATAC_VERSION 1.2.9

RUN apt-get update

RUN cd /opt \
    && wget https://github.com/LiuLabUB/HMMRATAC/releases/download/1.2.9/HMMRATAC_V${HMMRATAC_VERSION}_exe.jar \
    && mv HMMRATAC_V${HMMRATAC_VERSION}_exe.jar HHMRATAC.jar

ENTRYPOINT ["java", "-jar", "/opt/HHMRATAC.jar"]