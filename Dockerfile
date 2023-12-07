# Use an official Tomcat runtime as a parent image
FROM tomcat:latest

# Set the working directory to the Tomcat webapps directory
WORKDIR /usr/local/tomcat/webapps

# Remove the default Tomcat sample application
RUN rm -rf ROOT

# Copy the war file into the webapps directory
COPY your-web-app.war ROOT.war

# Expose the port that Tomcat will run on
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
