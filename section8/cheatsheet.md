# Helm Commands

### 1. Generate Chart Repo Index

```bash
helm repo index <folder> 
```

```bash
helm repo index files 
```

```bash
helm repo update 
```

### 2. Add repo 

```bash 
helm repo add my-repo http://localhost:8080
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



