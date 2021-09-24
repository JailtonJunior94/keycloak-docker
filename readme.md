# Keycloak - Criação de ambiente (Docker e Kubernetes)

## Docker
Executando local com docker-compose
```
docker-compose up --build -d
```

## Microsoft Azure
1. Autenticar no cluster AKS
```
az login
az aks get-credentials --resource-group keycloak-rg --name keycloak-aks
```

## Kubernetes
Aplicando manifest
1. Instalação ingress com Nginx
```
https://kubernetes.github.io/ingress-nginx/deploy/
```
2. Instalação cert-manager
```
https://cert-manager.io/docs/installation/
```
3. Aplicando namespace
```
kubectl apply -f .\.k8s\namespaces\ -R
```
4. Aplicando deployments
```
kubectl apply -f .\.k8s\deployments\ -R -n keycloak
```
5. Aplicando services
```
kubectl apply -f .\.k8s\services\ -R -n keycloak
```
6. Aplicando ingress
```
kubectl apply -f .\.k8s\ingress\ -R -n keycloak
```
6. Aplicando cert-manager
```
kubectl apply -f .\.k8s\certmanager\ -R -n keycloak
```
7. Habilitando Metrics Server
```
kubectl apply -f .\.k8s\metrics\ -R
```
8. Aplicando HPA
```
kubectl apply -f .\.k8s\hpas\ -R -n keycloak
```

## Cert-Manager
```
kubectl get clusterissuer -n keycloak
kubectl get certificate -n keycloak
kubectl describe certificate -n keycloak
``` 