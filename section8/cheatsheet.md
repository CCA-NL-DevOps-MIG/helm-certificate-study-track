# Helm Commands

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



