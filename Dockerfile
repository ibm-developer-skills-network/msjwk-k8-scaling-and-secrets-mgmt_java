# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Maven build artifact (the JAR file)
COPY target/java-k8s-app-1.0-SNAPSHOT.jar app.jar

# Expose the port on which the application will run
EXPOSE 3000

# Command to run the JAR file
CMD ["java", "-jar", "app.jar"]
