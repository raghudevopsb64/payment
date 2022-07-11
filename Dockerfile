FROM        openjdk
RUN         mkdir /app
WORKDIR     /app
COPY        shipping.jar /app
ENTRYPOINT  ["java", "-Xmx3000m", "-jar", "/app/shipping.jar"]
