# Step 1: Use a base image with JDK (OpenJDK 11)
FROM openjdk:11-jre-slim as base

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy the project JAR file into the container
COPY target/java-sample-app-1.0-SNAPSHOT.jar /app/java-sample-app.jar

# Step 4: Define the entrypoint to run the application
ENTRYPOINT ["java", "-jar", "/app/java-sample-app.jar"]

# Step 5: Expose the application on port 8090
EXPOSE 8090
