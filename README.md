# test snyk for k8s resources configuration

## expected results
### helm
TODO

### jsonnet
the container has no securityContext configured, should raise an error

### kustomize
the container has a securityContext configured using the patch, should not raise an error

actually deployed resource : 

```
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: nginx
  name: nginx
spec:
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - image: nginx:1.14.2
        name: nginx
        ports:
        - containerPort: 80
        securityContext:
          readOnlyRootFilesystem: true
          runAsNonRoot: true
```
