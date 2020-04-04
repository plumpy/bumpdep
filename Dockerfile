FROM openjdk:11
COPY . /bumpdep
RUN /bumpdep/gradlew -p /bumpdep installDist
ENTRYPOINT ["/bumpdep/build/install/bumpdep/bin/bumpdep"]
