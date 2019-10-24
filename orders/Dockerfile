FROM weaveworksdemos/msd-java:jre-latest

#WORKDIR /usr/src/app
#COPY *.jar ./app.jar

#RUN	chown -R ${SERVICE_USER}:${SERVICE_GROUP} ./app.jar

#USER ${SERVICE_USER}

#ENTRYPOINT ["/usr/local/bin/java.sh","-jar","./app.jar", "--port=80"]




ENTRYPOINT ["java","-jar","/app/orders/app.jar","-Ddb:orders-db=orders-db","--port=80"]