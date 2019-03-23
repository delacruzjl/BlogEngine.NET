# az aks  --help
# az login
# az account set --subscription e7dfbf68-c3d0-4b65-b84a-716fe8051e0b

$resourceGroup = "dlchDocker"
az group create -n $resourceGroup -l "eastus"

$serviceplan = dlchDockerPlan
az appservice plan create `
    --name $serviceplan --resource-group $resourceGroup --sku S1 --is-windows

$appname = delacruzhomeBE
az webapp create `
    --resource-group $resourceGroup `
    --plan $serviceplan `
    --name $appname `
    --multicontainer-config-type compose `
    --multicontainer-config-file compose-blogengine.yml


# $clustername = "MyAKS"
# az aks create -g $resourceGroup -n $clustername `
#     --node-count 1 --generate-ssh-keys

# kubectl version --short

# az aks get-credentials --resource-group dlchRG --name delacruzhome

# kubectl get nodes

# cd C:\src\BlogEngine.NET\BlogEngine


# kubectl version

# kubectl get nodes

# kubectl run blogenginenet --image=jodelac/blogenginenet:latest --port=80

# kubectl get deployments