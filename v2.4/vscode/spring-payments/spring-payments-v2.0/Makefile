all: clean

clean:
	gradle clean

compile:
	gradle build
	rm -rf bin

test:
	gradle test

jar: 
	gradle build -x test
	gradle bootJar

run: jar
	echo Starting Spring at:  http://localhost:8080
	java -jar build/libs/spring-payments-2.0.jar