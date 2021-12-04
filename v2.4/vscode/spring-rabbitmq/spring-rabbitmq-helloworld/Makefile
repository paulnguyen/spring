
all: clean

clean: 
	gradle clean

docker-clean:
	docker stop rabbitmq
	docker rm rabbitmq

network-create:
	docker network create --driver bridge springdemo

network-inspect:
	docker network inspect springdemo

network-ls:
	docker network ls

shell:
	docker exec -it rabbitmq bash 

rabbit:
	docker run --name rabbitmq \
	           --network springdemo \
			   -p 8080:15672 -p 4369:4369 -p 5672:5672 \
			   -d rabbitmq:3-management
console:
	open http://localhost:8080

# Management Console: http://localhost:8080
# username and password of guest / guest:

build:
	gradle build

run:
	gradle bootRun

jar:
	gradle bootJar

send: jar
	java -jar build/libs/spring-rabbitmq-helloworld-1.0.jar --spring.profiles.active=$(env),hello,sender

receive: jar
	java -jar build/libs/spring-rabbitmq-helloworld-1.0.jar --spring.profiles.active=$(env),hello,receiver


# Pod  

pod-create:
	kubectl create -f rabbitmq-pod.yaml

pod-get:
	kubectl get pods rabbitmq

pod-shell:
	kubectl exec -it rabbitmq -- /bin/bash

pod-delete:
	kubectl delete pod rabbitmq

# Kubernetes Service

service-create:
	kubectl create -f rabbitmq-console.yaml

service-get:
	kubectl get services

service-get-ip:
	kubectl get service rabbitmq-console -o wide

service-delete:
	kubectl delete service rabbitmq-console




