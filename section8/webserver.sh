#!/usr/bin/env bash

docker run --name my-nginx -d -p 8080:80 -v /Users/hannesprinsloo/src/github.com/CCA-NL-DevOps-MIG/helm-certificate-study-track/section8/files:/usr/share/nginx/html:ro nginx
