# Build stage
FROM maven:3.9.5-eclipse-temurin-17 as builder

WORKDIR /build

# Copy pom.xml and source code
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# Runtime stage
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Copy JAR from builder stage
COPY --from=builder /build/target/simple-app-1.0.0.jar app.jar

# Expose port 8082
EXPOSE 8082

# Set environment variables
ENV SERVER_PORT=8082

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=8082"]
