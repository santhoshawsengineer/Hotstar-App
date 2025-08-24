# ---------- Builder stage ----------
FROM maven:3.9.11-amazoncorretto-8-debian-trixie AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# ---------- Deployment stage ----------
FROM tomcat:9.0.108-jre21-temurin-noble
# Copy the WAR file from builder to Tomcat's webapps directory
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/
