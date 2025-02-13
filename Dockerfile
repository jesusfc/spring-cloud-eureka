##
## Usar el plugin de Spotify (fabric8) para construir la imagen
##
FROM eclipse-temurin:17-jdk

# Set author
LABEL Mentainer="jfcaraballo@gmail.com"

# Set Expose port, just for information
EXPOSE 8761

# Set the working directory
WORKDIR /application
COPY target/*.jar /application/spring-cloud-eureka.jar

# Run the application
ENTRYPOINT ["java", "-jar", "spring-cloud-eureka.jar"]
