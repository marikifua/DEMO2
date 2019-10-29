FROM centos:7

RUN yum install -y epel-release java-1.8.0-openjdk-devel




#ENTRYPOINT ["java","-jar","/app/carts/carts.jar","-Ddb:carts-db=db-tf", "--port=80"]
ARG DB_NETWORK_IP=""
ENV DB_NETWORK_IP=$DB_NETWORK_IP

CMD ["sh","-c","java -Djava.security.egd=file:/dev/urandom -Ddb:carts-db=${DB_NETWORK_IP} -jar /app/carts/carts.jar --port=80"]
