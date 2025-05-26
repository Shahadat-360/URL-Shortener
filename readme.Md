# URL Shortener App
Let's build Url Shortener 

## Infrastructure as code
 ### Azure CLI Download
 https://docs.microsoft.com/en-us/cli/azure/
 
 ### Login in Azure
 ```bash
 az login
 ```
 ### Create Resource Group
 ```bash
 az group create --name urlshortener-dev --location eastus
 ```

### Deploy Bicep
### What-if
```bash
az deployment group what-if --name URLShortener-dev --template-file infrastructure/main.bicep
```

### Deploy
```bash
az deployment group create --name URLShortener-dev --template-file infrastructure/main.bicep
```

### Create User For GH Action
```bash
    az ad sp create-for-rbac --name "GitHub-Actions-SP" \
                            --role "Contributor" \
                            --scopes /subscriptions/28c8bd04-c697-4c4f-9e37-9ea02d092ea8 \
                            --sdk-auth
```

### Configure a federated identity credential on an app
https://learn.microsoft.com/en-us/entra/workload-id/workload-identity-federation-create-trust?pivots=identity-wif-apps-methods-azp#configure-a-federated-identity-credential-on-an-app

