FROM tomcat:9.0.45-jdk11
WORKDIR /usr/local/tomcat/webapps
RUN rm -rf ROOT*
ADD https://github.com/jenkinsci/jenkins/releases/download/jenkins-2.287/jenkins.war ROOT.war
CMD ["catalina.sh", "run"]
