# Ubuntu Linux as the base image
FROM ubuntu:16.04

# Install the packages
RUN apt-get update && \
    apt-get -y install default-jre

# Open the following ports
EXPOSE 8080

# Add the files
ADD ./target/Task2-Java-Server-1.0-SNAPSHOT-jar-with-dependencies.jar /

# Define the command which runs when the container starts
CMD ["java -cp Task2-Java-Server-1.0-SNAPSHOT-jar-with-dependencies.jar edu.cmu.cs.cloud.sample.Server"]

# Use bash as the container's entry point
ENTRYPOINT ["/bin/bash", "-c"]