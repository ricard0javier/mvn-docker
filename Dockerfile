FROM java:8
MAINTAINER Ricardo Villanueva <ricardo.villanueva@bla.co.uk>

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/bla_service/application.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
ADD ./dependency           /usr/share/bla_service/lib
# Add the service itself
ADD ./gs-maven-0.1.0.jar /usr/share/bla_service/application.jar