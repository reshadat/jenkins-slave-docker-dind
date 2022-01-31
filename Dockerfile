FROM adoptopenjdk/maven-openjdk11 as maven

FROM eeacms/jenkins-slave-dind
COPY --from=maven /usr/share/maven /usr/share/maven
COPY --from=maven /usr/bin/curl /usr/bin/curl

ENV MAVEN_HOME=/usr/share/maven
ENV PATH "$PATH:/usr/share/maven/bin/"


ENTRYPOINT ["/docker-entrypoint-dind.sh"]
CMD ["java", "-jar", "/bin/swarm-client.jar"]
