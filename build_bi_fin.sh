#!/bin/bash

# Define an array of service directories and their corresponding tags
declare -A services=(
  ["provisioner"]="bi-fincn-provisioner-service:latest"
  ["identity"]="bi-fincn-identity-service:latest"
  ["rhythm"]="bi-fincn-rhythm-service:latest"
  ["office"]="bi-fincn-office-service:latest"
  ["customer"]="bi-fincn-customer-service:latest"
  ["accounting"]="bi-fincn-accounting-service:latest"
  ["portfolio"]="bi-fincn-portfolio-service:latest"
  ["deposit-account-management"]="bi-fincn-deposit-account-management-service:latest"
  ["teller"]="bi-fincn-teller-service:latest"
  ["reporting"]="bi-fincn-reporting-service:latest"
  ["cheques"]="bi-fincn-cheques-service:latest"
  ["payroll"]="bi-fincn-payroll-service:latest"
  ["group"]="bi-fincn-group-service:latest"
  ["notifications"]="bi-fincn-notifications-service:latest"
  ["fims-web-app"]="bi-fincn-fims-web-app-service:latest"
)

# Loop through the services and build Docker images
for service in "${!services[@]}"
do
  echo "Building $service service..."
  cd "fineract-cn-$service"
  sudo docker build -t "${services[$service]}" .
  echo "Finished building $service service."
  cd ../ # Navigate back to the main directory
done

echo "All services built successfully."

