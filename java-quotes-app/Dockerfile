FROM eclipse-temurin:17-jdk-alpine
LABEL maintainer="sparshjaipuriyar@gmail.com"
LABEL version="1.0"
LABEL description="A Java Quotes application"
WORKDIR /app
COPY src/Main.java /app/Main.java
COPY quotes.txt quotes.txt
RUN javac Main.java
EXPOSE 8080
CMD ["java", "Main"]



