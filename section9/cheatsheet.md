# Helm Commands

## Helm Chart File Server

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

## Chart Security

### 1. Generate key using GnuPG
```bash
gpg --full-generate-key
```

### 2. Export keys
```bash
gpg --export-secret-keys > ~/.gnupg/secring.gpg
```

### 3. Sign Chart 
```bash
helm package --sign --key hannes.prinsloo@capgemini.com --keyring ~/.gnupg/secring.gpg ./chart 
```

### 4. Verify Chart 
```bash
helm verify --keyring ~/.gnupg/secring.gpg ./my-helm-chart-1.1.0.tgz 
```



