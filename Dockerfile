FROM openjdk:8
RUN  curl -k -X GET "https://cida.usgs.gov/artifactory/mlr-maven/gov/usgs/wma/mlrLegacy/0.1-SNAPSHOT/mlrLegacy-0.1-20170816.160616-1.jar" > mlrLegacy.jar
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar mlrLegacy.jar" ]