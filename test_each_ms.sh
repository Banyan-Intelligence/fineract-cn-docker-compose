#!/bin/bash

services=(
  "provisioner-ms"
  "identity-ms"
  "rhythm-ms"
  "office-ms"
  "customer-ms"
  "accounting-ms"
  "portfolio-ms"
  "deposit-ms"
  "teller-ms"
  "reporting-ms"
  "cheques-ms"
  "payroll-ms"
  "group-ms"
  "notifications-ms"
  "fims-web-app"
)

for service in "${services[@]}"
do
  echo "Starting service: $service"
  sudo docker compose up "$service" & # Start the service in the background
  sleep 30 # Wait for 30 seconds
  echo "Aborting service: $service"
  sudo docker compose down "$service" # Stop the service
done

