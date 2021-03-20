FROM maven:3.6.1-jdk-8-alpine AS builder

WORKDIR /build

COPY . .

RUN mvn install

RUN mv target/*jar java.jar

# FROM openjdk:jre-alpine3.8 AS production

# WORKDIR /app

# COPY --from=builder /build/java.jar .

# ENTRYPOINT ["java","-jar"]

# CMD ["java.jar"]



