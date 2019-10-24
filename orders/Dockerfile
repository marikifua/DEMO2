FROM centos:7

RUN yum install -y epel-release java-1.8.0-openjdk-devel


WORKDIR /usr/src/app

ENTRYPOINT ["/usr/local/bin/java.sh","-jar","-Ddb:orders-db=orders-db","./app.jar", "--port=80"]