# atlassian-default-image-sre

Provides an alternative to the Atlassian provided default image for Bitbucket Pipelines that also includes popular DevOps/SRE tools such as: 

* AWS Command Line Interface (CLI)
* Ansible
* JQ
* Packer
* Terraform

### Version

This image is based on:

* `atlassian/default-image:2`
* `Packer 1.2.1`
* `Terraform 0.11.5`


### Usage

You can use this image in a similar fashion to the default Atlassian Bitbucket Pipelines image:

```yaml
options:
  docker: true
  
pipelines:
  default:
    - step:
        image: steliospsarras/atlassian-default-image-sre
        ...
```

