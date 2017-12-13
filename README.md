# broadinstitute/docker-terraform
[![](https://images.microbadger.com/badges/image/broadinstitute/terraform.svg)](http://microbadger.com/images/broadinstitute/terraform "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/broadinstitute/terraform.svg)](https://hub.docker.com/r/broadinstitute/terraform/)
[![Docker Hub](http://img.shields.io/docker/pulls/broadinstitute/terraform.svg)](https://hub.docker.com/r/broadinstitute/terraform/)

## What is terraform

[Terraform][1] provides a common configuration to launch infrastructure from physical and virtual servers to email and DNS providers. Once launched, [Terraform][1] safely and efficiently changes infrastructure as the configuration is evolved.

Simple file based configuration gives you a single view of your entire infrastructure.

http://www.terraform.io/

## Dockerfile

This Docker image is based on the official [Alpine][2] 3.2 base image.

## Terraform configuration files

This container expects the user to mount in a directory, which will be mapped to the `/data` directory inside the container.  This is the directory from which [Terraform][1] is configured to read the configuration files referenced by the commands you call.

## Getting started

### Build the container

```
docker build -t terraform .
```

### Set up the symlink

```
bash install.sh
```

## How to run this image

```
terraform.sh apply [options]
```

### terraform apply

```
terraform.sh apply [options]
```

### terraform destroy

```
terraform.sh destroy [options]
```

### terraform get

```
terraform.sh get [options]
```

### terraform graph

```
terraform.sh graph [options]
```

### terraform init

```
terraform.sh init [options] SOURCE [PATH]
```

### terraform output

```
terraform.sh output [options] NAME
```

### terraform plan

```
terraform.sh plan [options]
```

### terraform push

```
terraform.sh push [options]
```

### terraform refresh

```
terraform.sh refresh [options]
```

### terraform remote

```
terraform.sh remote [options]
```

### terraform show

```
terraform.sh show terraform.tfstate [options]
```

### terraform taint

```
terraform.sh taint [options] name
```

### terraform version

```
terraform.sh version
```

### alternative usage

```
docker run -it --rm broadinstitute/terraform [--version] [--help] <command> [<args>]
```

```
docker run -it --rm -v /etc/ssl/certs:/etc/ssl/certs:ro --net=host broadinstitute/terraform [--version] [--help] <command> [<args>]
```

[1]: http://www.terraform.io/ "Terraform"
[2]: https://registry.hub.docker.com/_/alpine "Alpine"
[3]: https://github.com/broadinstitute/docker-terraform "Origin"
