FROM centos:7

RUN yum install -y epel-release java-1.8.0-openjdk-devel




ENTRYPOINT ["java","-jar","/app/orders/app.jar","-Ddb:orders-db=orders-db","--port=80"]