FROM tomcat:9.0.20-jre8
MAINTAINER modi.lokesh89@gmail.com
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
RUN chmod -R 777 $CATALINA_HOME/webapps
ENV CATALINA_HOME /usr/local/tomcat
ENV dbDriver=com.mysql.jdbc.Driver dbConnectionUrl=jdbc:mysql://my-mysql:3306/cicd dbUserName=root dbPassword=password
COPY target/UserLogin.war  /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
