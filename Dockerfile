FROM java:8

WORKDIR /home/root/javahelloworld
ENV FOO bar
RUN mkdir bin
COPY src src
RUN javac -d bin src/HelloWorld.java
RUN touch /tmp/toto
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
