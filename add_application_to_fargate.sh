#!/bin/bash

# the namespace name needs to be the same as the fargate name
kubectl create ns java-application

# my docker is public so no authentication needed
kubectl apply -f Java/secret.yml -n java-application
kubectl apply -f Java/configmap.yml -n java-application
kubectl apply -f Java/mysql.yaml -n java-application
kubectl apply -f Java/java.yaml -n java-application

