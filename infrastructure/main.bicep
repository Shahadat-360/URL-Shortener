param location string = resourceGroup().location
var uniqueId = uniqueString(resourceGroup().id)

module appService 'module/compute/appservice.bicep' = {
  name: 'apiDeployment'
  params:{
    appName: 'api-${uniqueId}'
    appServiceName: 'plan-api-${uniqueId}'
    location: location
  }
}
