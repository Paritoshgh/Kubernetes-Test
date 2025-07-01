#!/bin/bash

echo "Starting port-forwarding..."
kubectl port-forward svc/django-todo-service 8001:8001 -n django-todo-app &
sleep 2

echo "Starting ngrok tunnel..."
ngrok http 8001

