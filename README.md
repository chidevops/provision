# Automated Provision of Dev Environments

This is part 1 of a series of workshops that look at the tools and concepts from the [periodic table of DevOps](https://xebialabs.com/periodic-table-of-devops-tools/). This workshop (5/7/17) covers provisioning environments that can be used in dev and prod through the use of tools like Ansible, Vagrant and Packer to automate and manage the creation of those environments.

## Concepts

- Building an immutable machine image
- Separating static and dynamic configurations
- Creating disposable VM's for testing and development
- Automating all the things
- "Code as infrastructure" - keep infrastructure configuration under source control for easy deployment


## Goals

- Understand basic Vagrant files and configuring a Vagrantfile
- Writing Packer configuration to automate Vagrantfile creation
- Creating Ansible roles to provision images and deploy them using ansible-playbook

## Setup

In order to speed along the initial configuration, we need to install VirtualBox and Vagrant in order to follow along and further provision the environment. If you're on OS X, you can use a script written up by Github user rrgrs to install via Brew:

```Bash
if ! type "brew" > /dev/null; then
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)";
fi
brew tap phinze/homebrew-cask && brew install brew-cask;
brew cask install vagrant;
brew cask install virtualbox;
brew install packer;
```

That script can be located in the repository under brew_install.sh (ensure you make it excecutable via ```chmod +x brew_install.sh``` followed by ```./brew_install.sh```.

If you cannot use brew (linux, windows) you can download VirtualBox [here](https://www.virtualbox.org/wiki/Downloads), Vagrant [here](https://www.vagrantup.com/downloads.html) and Packer [here](https://www.packer.io/downloads.html).

The initial pulling of the Ubuntu 14.04 iso image takes a moment, so I recommend pulling this repository and run the initial ```virtualbox.yml``` file with Packer by running ```packer build -var-file=vars.json template.yml``` which should (slowly) setup an ubuntu image for Vagrant, an awd AMI, and a Dockerfile.

![Imgur](http://i.imgur.com/rlllt0f.png)
