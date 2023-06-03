FROM openjdk:17-slim

# Set environment variables for MySQL connection
ENV DB_HOST=dpg-chtqr2vdvk4oliqdp0ng-a
ENV DB_PORT=5432
ENV DB_NAME=testdb_scxb
ENV DB_USER=root
ENV DB_PASSWORD=QurAueqBZTJ31D9F6rjsXSRqJU2M5x01

# Install MySQL client
RUN apt-get update && apt-get install -y default-mysql-client

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file to the container
COPY ./target2/polls-0.0.1-SNAPSHOT.jar polls-0.0.1-SNAPSHOT.jar

# Expose the port your application listens on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "polls-0.0.1-SNAPSHOT.jar"]
