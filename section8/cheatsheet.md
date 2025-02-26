# Helm Commands

## Helm Chart File Server

### 1. Add repo 

```bash 
helm repo add my-repo http://localhost:8080
```

### 2. Generate Chart Repo Index

```bash
helm repo index <folder> 
```

```bash
helm repo index files 
```

```bash
helm repo update 
```

### 3. Helm package

```bash
helm package <chart> -d <destination>
```

```bash
helm package ./chart -d ./files/ 
```

### 4. Search repo

```bash
helm search repo my-repo
```

### 5. Install Helm chart

```bash
helm install my-release my-repo/my-helm-chart
```

### 6. Helm pull

```bash
helm pull my-repo/my-helm-chart
```

## OCI Repository

```bash
docker run -d --name repository -p 5001:5000 registry
```

```bash
helm push my-helm-chart-1.1.0.tgz oci://localhost:5001/charts
```

```bash
helm show all oci://localhost:5001/charts/my-helm-chart --version 1.1.0
```

