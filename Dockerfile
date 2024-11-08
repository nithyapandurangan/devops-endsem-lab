# Use the official Maven image with JDK 11
FROM maven:3.8.6-openjdk-11

# Set the working directory inside the container
WORKDIR /app

# Copy the project files to the container
COPY . /app

# Package the application
RUN mvn clean package

# Define the entry point to run the application
ENTRYPOINT ["java", "-jar", "target/my-java-app-1.0-SNAPSHOT.jar"]

