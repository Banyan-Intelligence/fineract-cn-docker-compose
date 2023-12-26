#!/bin/bash

REPOS=(
    "fineract-cn-rhythm"
    "fineract-cn-office"
    "fineract-cn-customer"
    "fineract-cn-accounting"
    "fineract-cn-portfolio"
    "fineract-cn-deposit-account-management"
    "fineract-cn-teller"
    "fineract-cn-reporting"
    "fineract-cn-cheques"
    "fineract-cn-payroll"
    "fineract-cn-group"
    "fineract-cn-notifications"
    "fineract-cn-fims-web-app"
    "fineract-cn-docker-compose"
    "fineract-cn-provisioner"
    "fineract-cn-identity"
)

BRANCH="bishal/dev_aws"
GITHUB_URL="https://github.com/Banyan-Intelligence"

for REPO in "${REPOS[@]}"; do
    git clone -b "$BRANCH" "$GITHUB_URL/$REPO.git"
done

