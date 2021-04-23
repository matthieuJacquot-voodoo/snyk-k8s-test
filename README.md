# test snyk for k8s resources configuration

## expected results
### helm
TODO

### jsonnet
the container has no securityContext configured, should raise an error

### kustomize
the container has a securityContext configured using the patch, should not raise an error
