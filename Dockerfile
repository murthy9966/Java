# Use an official Tomcat runtime as a base image
FROM tomcat:9-jre11-slim

# Remove the default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into the webapps directory of Tomcat
COPY your-java-app.war /usr/local/tomcat/webapps/your-java-app.war

# Expose the port that Tomcat will run on
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
