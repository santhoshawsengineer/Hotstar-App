# ---------- Builder stage ----------
FROM maven:3.9.11-amazoncorretto-8-debian-trixie AS builder
WORKDIR /app
COPY . .
# ---------- Builder stage ----------
FROM maven:3.9.11-amazoncorretto-8-debian-trixie AS builder
WORKDIR /app

# Copy pom.xml and download dependencies (cached layer)
COPY pom.xml .
RUN mvn dependency:go-offline -B \
    -Dmaven.wagon.http.retryHandler.count=3 \
    -Dmaven.wagon.httpconnectionManager.ttlSeconds=30

# Copy source code
COPY src ./src

# Build application
RUN mvn clean package -DskipTests


RUN mvn clean package -DskipTests

# ---------- Deployment stage ----------
FROM tomcat:9.0.108-jre21-temurin-noble
# Copy the WAR file from builder to Tomcat's webapps directory
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/
