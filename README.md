# kubebuilder-container

Wraps the [kubebuilder][kb] binary into a container for a few select platforms

All credit to kubebuilder team, please checkout this great project at [kubernetes-sigs/kubebuilder][kb]

## Usage

Run container to initialize a local directory

```bash
KUBEBUILDER_HOME=/home/kubebuilder # context within container
docker pull despitehowever/kubebuilder:v4.3.1-linux
docker run -v $PWD:$KUBEBUILDER_HOME --rm despitehowever/kubebuilder:v4.3.1-linux init
INFO Writing kustomize manifests for you to edit...
INFO Writing scaffold for you to edit...
INFO Get controller runtime:
$ go get sigs.k8s.io/controller-runtime@v0.19.1
...
```

## Contributing
Please feel free to submit PRs updating Dockerfile or adding additional versions to actions matrix. 

This was quickly done for those who can pull and run containers at work but getting direct access to a new software binary is months of paperwork.

[kb]: https://github.com/kubernetes-sigs/kubebuilder
