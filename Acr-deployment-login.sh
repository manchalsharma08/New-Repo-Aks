#!/bin/bash





echo "Creating an Azure Container Registry..."
az acr create --resource-group myman-rg --name myacr0216 --sku Basic
echo "ACR deployment completed."

echo "Verifying the ACR account..."
az acr show --name myacr0216 --resource-group myman-rg --query "loginServer" --output table

echo "Logging in to ACR..."
az acr login --name myacr0216 --expose-token        
echo "Login completed."
echo "Verifying the login..."

