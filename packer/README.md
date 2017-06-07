# Packer


For AWS AMI builds, there are a few variables you need to set:

```Bash
$ export aws_secret_key
$ export aws_access_key
$ export atlas_token
```

### One-off commands

```Bash
$ packer build template.json # build image(s) using a packer template
$ packer build -var-file=vars.json template.json # specify variables
```
