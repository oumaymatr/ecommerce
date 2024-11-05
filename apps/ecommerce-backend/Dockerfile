FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

# Copy Maven wrapper files
COPY .mvn/ .mvn/
COPY mvnw pom.xml ./

# Make mvnw executable
RUN chmod +x mvnw

# Download dependencies
RUN ./mvnw dependency:go-offline

# Copy source code
COPY src ./src

# Build the application
RUN ./mvnw package -DskipTests

# Run the application
CMD ["java", "-jar", "target/*.jar"]