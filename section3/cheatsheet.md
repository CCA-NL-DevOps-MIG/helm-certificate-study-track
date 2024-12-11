# Repository Commands

### 1. Add a Repository
```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
```

### 2. List Repositories
```bash
helm repo list
```

### 3. Update Local Repository Cache
```bash 
helm repo update
```
### 4. Remove a Repository
```bash
helm repo remove bitnami
```

### 5. Search Charts in a Repository
To search for charts within your local registered repositories
```bash
helm search repo <search-term>
```

```bash
helm search repo nginx
```

```bash
helm search repo nginx --versions
```

### 6. Inspect Chart Details
```bash
helm show chart bitnami/nginx
```

# Chart Commands

### 7. Install a Chart
To install a chart from a web repository:

```bash
helm install <unique-release-name> <repo-name>/<chart-name>
```

```bash 
helm install my-nginx-server bitnami/nginx
```

To install a local chart:
```bash
helm install <unique-release-name> <path-to-chart>
```

```bash 
helm install my-custom-nginx-server ./chart/
```

### 8. Upgrade a Chart
```bash
helm upgrade <release-name> <repo-name>/<chart-name>
```

```bash
helm upgrade my-nginx-server bitnami/nginx
```

### 9. Uninstall a Chart
```bash
helm uninstall <release-name>
```

### 10. Update / Install 
```bash
helm upgrade --install my-nginx-server bitnami/nginx
```
```bash
helm upgrade --install my-nginx-server bitnami/nginx --set replicaCount=2
```

### 11. Revision History 
```bash
kubectl get secret | grep release
```



