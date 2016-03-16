# benchmark-tools

## Overview

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

## Tools

The following tools will be installed in the VM.

* ab - Apache HTTP server benchmarking tool

## License

The MIT License (MIT)

Copyright (c) 2016 John McKenzie

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
