FROM openjdk:8
ARG mlr_jar
RUN  curl -k -X GET "https://cida.usgs.gov/artifactory/mlr-maven/gov/usgs/wma/$mlr_jar" > mlrLegacy.jar
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar mlrLegacy.jar" ]