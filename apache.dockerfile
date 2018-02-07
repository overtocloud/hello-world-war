FROM tomcat:8.0.48-jre8
COPY /home/testuser/apps/jenkins/jenkins_home/workspace/upload_artifact/dist/hello-world.war /opt/bitnami/apache-tomcat/webapps/hello-world.war
EXPOSE 8080
CMD apache-tomcat-8.0.48/bin/startup.sh && tail -f apache-tomcat-8.0.48/logs/catalina.out