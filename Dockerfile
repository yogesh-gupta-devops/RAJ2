FROM maven:3.8.5-openjdk-18
COPY pom.xml /tmp/pom.xml
RUN mvn -B -f /tmp/pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve
CMD ["RUN YOUR CODEs"]
