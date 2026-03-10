# Simple Java Application

A simple Spring Boot web application exposed on port 8082 using Docker.

## Prerequisites
- Docker
- Java 17+ (optional, for local development)
- Maven 3.9+ (optional, for local development)

## Building the Docker Image

```bash
docker build -t simple-java-app:latest .
```

## Running the Application

```bash
docker run -p 8082:8082 simple-java-app:latest
```

The application will be available at `http://localhost:8082`

## Endpoints

- `GET /` - Returns a welcome message
- `GET /health` - Health check endpoint

## Local Development (without Docker)

### Prerequisites
- Java 17+
- Maven 3.9+

### Build
```bash
mvn clean package
```

### Run
```bash
java -jar target/simple-app-1.0.0.jar
```

The application will start on port 8082.
