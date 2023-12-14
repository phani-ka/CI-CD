FROM tomcat
COPY target/helloworld-${BUILD_NUMBER}.war /usr/local/tomcat/webapps/
