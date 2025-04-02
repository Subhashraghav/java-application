# Use the official Tomcat base image
FROM tomcat:10.1-jdk11

# Set maintainer information (optional)
MAINTAINER "Subhash Private limited"
LABEL Description="This Dockerfile create custom docker image"
LABEL AUTHOR="Subhash"
LABEL Email="subhashmatlabe993@gmail.com"
ENV APP.TYPE JAVA
ENV COMPANY_TYPE IT
ENV COMPANY_EMAIL subhashmatlabe993@gmail.com

# Add custom configurations or libraries (optional)
# Uncomment the following lines if you want to add configuration files
# COPY server.xml /usr/local/tomcat/conf/server.xml

# Add your WAR file or application
# Replace 'my-app.war' with your actual application file
COPY target/java-application-1.0.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Command to start Tomcat
CMD ["catalina.sh", "run"]
