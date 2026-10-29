# ============================================================
# Etapa 1: Build
# ============================================================
FROM eclipse-temurin:25-jdk AS build
WORKDIR /app

# Copiar wrapper y pom primero (mejor cache de Docker)
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
RUN chmod +x mvnw && ./mvnw dependency:go-offline -B

# Copiar código y compilar
COPY src src
COPY config config
RUN ./mvnw package -DskipTests -B

# ============================================================
# Etapa 2: Runtime
# ============================================================
FROM eclipse-temurin:25-jre
WORKDIR /app

# Usuario no root por seguridad
RUN groupadd -r docuflow && useradd -r -g docuflow docuflow
USER docuflow

COPY --from=build --chown=docuflow:docuflow /app/target/*.jar app.jar

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s --start-period=40s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost:8080/actuator/health || exit 1

ENTRYPOINT ["java", "-jar", "app.jar"]
