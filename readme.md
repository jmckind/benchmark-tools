# benchmark-tools

This repo contains a Vagrant configuration, along with an Ansible playbook to
provision a VM with various HTTP benchmarking tools installed.

## Usage

A Makefile has been provided for ease of use that abstracts away the Vagrant
management commands.

First, setup the environment.

    $ make setup

Run the Vagrant VM.

    $ make run

Connect to the VM via SSH.

    $ make ssh

The instance will be provisioned using ansible the first time the Vagrant VM is
run. A make target has been provided to re-provision the VM as needed.

    $ make provision

Destroy the Vagrant VM.

    $ make destroy

Update the Vagrant box.

    $ make update

Cleaning the environment will clean out all generated artifacts.

    $ make clean

## tools

The following tools will be installed in the VM.

* ab - Apache HTTP server benchmarking tool
