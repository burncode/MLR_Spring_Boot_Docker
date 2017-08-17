FROM openjdk:8
ARG mlr_jar
RUN  curl -k -X GET "https://cida.usgs.gov/artifactory/mlr-maven/gov/usgs/wma/$mlr_jar" > app.jar
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar app.jar" ]