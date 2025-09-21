# ---------- Stage 1 : Build ----------
    FROM eclipse-temurin:17-jdk-alpine AS builder

    WORKDIR /app
    
    # Copy source and resources
    COPY src/Main.java /app/Main.java
    COPY quotes.txt /app/quotes.txt
    
    # Compile the Java source
    RUN javac Main.java
    
    # ---------- Stage 2 : Runtime ----------
    FROM eclipse-temurin:17-jre-alpine
    
    LABEL maintainer="sparshjaipuriyar@gmail.com"
    LABEL version="1.0"
    LABEL description="A Java Quotes application"
    
    WORKDIR /app
    
    # Copy only the compiled class and required resources from the builder stage
    COPY --from=builder /app/Main.class /app/Main.class
    COPY --from=builder /app/quotes.txt /app/quotes.txt
    
    # Expose the port your app listens on (update if your code listens on 8000!)
    EXPOSE 8080
    
    # Run the pre-compiled class
    CMD ["java", "Main"]
    