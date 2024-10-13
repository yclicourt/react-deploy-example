# Basic Application Frontend Using React + Vite

This demo app using React + Vitejs, TailwindCSS,Nginx, Docker, GitHub-Actions,Terraform, Minikube 

## Requirements
nodejs >= 18.20.2

## Instruction

1. Install dependencies
```
npm install
```

2. Test Code
```
npm run test
```

3. Start API
```
 npm run dev
```

## Use Docker Compose
1. Run this command
```
docker-compose up
```

## Use Minikube Kubernetes Cluster
1. Initialize minikube cluster
```
minikube start
```
2. Create namespace 
```
kubectl create ns <namespace>
```

3. Apply manifest
```
kubectl apply -f -R folder/ or file.yml
```
4. Access the url
```
minikube service <service> -n <namespace> --url
```
## Use Terraform

1. Initialize the project and download the provider
```
terraform init
```
2. Check the resources to be deployed
```
terraform plan
```

3. Deploy the resources
```
terraform apply
```