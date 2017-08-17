# MLR_Sprint_Boot_Docker
Standard docker file for deploying sprint boot jars

Assumes that the jar is located in https://cida.usgs.gov/artifactory/mlr-maven/gov/usgs/wma/. 
When the container is built you will need to specify the rest of the url to the jar to
deploy as follows:
```
 docker build --build-arg mlr_jar=mlrLegacy/0.1-SNAPSHOT/mlrLegacy-0.1-20170816.160616-1.jar .
```


