FROM tomcat:9.0.45-jdk11
WORKDIR /usr/local/tomcat/webapps
RUN rm -rf ROOT*
ADD https://tomcat.apache.org/tomcat-9.0-doc/appdev/sample/sample.war ROOT.war
CMD ["catalina.sh", "run"]
