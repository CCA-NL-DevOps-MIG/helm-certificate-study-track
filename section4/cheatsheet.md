# Helm Commands

### 1. Generate template

```bash
helm template <release-name> <chart> 
```

```bash
helm template my-nginx bitnami/nginx 
```

```bash
helm template my-nginx --values values-template.yaml bitnami/nginx > template_3.yaml
```

```bash
helm template my-nginx --set "replicaCount=5" bitnami/nginx > template_5.yaml
```

### 2. Helm install dry-run

```bash 
helm install --dry-run <release-name> <chart>
```

```bash 
helm install --dry-run my-nginx bitnami/nginx
```

```bash 
helm install --dry-run my-nginx bitnami/nginx > dry-run.yaml
```

### 3. Helm Get Manifest

```bash
helm get manifest <release-name>
```

```bash
helm get manifest my-nginx-server > manifest_current.yaml
```

```bash
helm get manifest my-nginx-server --revision 2 > manifest_2.yaml
```

### 4. Helm Get Values

```bash
helm get values <release-name>
```

```bash
helm get values my-nginx-server
```

### 5. Helm Get All

```bash
helm get all <release-name>
```

```bash
helm get all my-nginx-server > all.txt
```

### 6. Helm Get Metadata, Hooks & Notes

```bash
helm get metadata <release-name>
```

```bash
helm get metadata my-nginx-server
```

```bash
helm get hooks <release-name>
```

```bash
helm get hooks my-nginx-server
```

```bash
helm get notes <release-name>
```

```bash
helm get notes my-nginx-server
```

### 7. Helm History

```bash
helm history <release-name>
```

```bash
helm history my-nginx-server
```

### 8. Helm Rollback

```bash
helm rollback <release-name> <revision>
```

```bash
helm rollback my-nginx-server 9
```


Inspect history again

```bash
helm history my-nginx
```

### 9. Create namespace

```bash
helm install <release-name> <chart> --namespace <namespace> --create-namespace
```

```bash
helm install my-nginx-server bitnami/nginx --namespace my-namespace --create-namespace
```

```bash
helm list --namespace my-namespace
```

### 10. Generated Release Name

```bash
helm install <chart> --generate-name --name-template "<template>"
```

```bash
helm install bitnami/nginx --generate-name --name-template "my-nginx-{{ randAlpha 7 | lower }}"
```

### 11. Helm wait & timeout

```bash
helm install <release-name> <chart> --wait --timeout <duration>
```

```bash
helm install <release-name> <chart> --wait-for-job --timeout <duration>
```

```bash
helm install my-nginx-server-3 bitnami/nginx --wait
```

### 12. Atomic install

```bash
helm upgrade --install <release-name> <chart> --atomic --timeout 1m
```

```bash
helm upgrade --install my-nginx-server bitnami/nginx --values values-invalid.yaml --atomic --timeout 1m
```

### 13. Helm upgrade by force

```bash
helm upgrade --install <release-name> <chart> --force
```

```bash
helm upgrade --install my-nginx-server bitnami/nginx --force
```

