# Imagem base do OpenJDK
FROM registry.access.redhat.com/ubi9/ubi-minimal

# Diretório de trabalho
WORKDIR /app

# Copia o arquivo JAR da aplicação para o contêiner
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expor a porta
EXPOSE 8080

# Comando para executar o JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
