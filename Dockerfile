FROM amazoncorretto:17.0.9-al2-generic
RUN echo "Building container"

WORKDIR /usrapp/bin

ENV PORT 15600

COPY /target/classes /usrapp/bin/classes
COPY /target/dependency /usrapp/bin/dependency

CMD ["java", "-cp", "./classes:./dependency/*", "com.edu.escuelaing.SparkWebServer"] 