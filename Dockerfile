FROM openjdk:21

WORKDIR /app

# Copy source files
COPY src src

# Compile Java file into correct classpath
RUN javac src/main/java/com/banksecure/App.java -d out

# Run the app from compiled output directory
CMD ["java", "-cp", "out", "com.banksecure.App"]

