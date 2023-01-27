FROM centos:centos7.9.2009

RUN yum update -y && \
    yum install wget -y

RUN wget "https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.tar.gz" && \
    gunzip apache-tomcat-9.0.71.tar.gz && \
    tar -xvf apache-tomcat-9.0.71.tar && \
    mkdir -p /opt/tomcat && \
    mv apache-tomcat-9.0.71/* /opt/tomcat/ && \
    yum -y install java && \
    java -version

COPY config/server.xml /opt/tomcat/conf/server.xml
EXPOSE 8080

WORKDIR /opt/tomcat
ENTRYPOINT ["/opt/tomcat/bin/entrypoint.sh"]
