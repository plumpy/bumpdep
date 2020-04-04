FROM openjdk:11
COPY . /bumpdep
RUN /bumpdep/gradlew --no-daemon -p /bumpdep installDist
ENTRYPOINT ["/bumpdep/build/install/bumpdep/bin/bumpdep"]
