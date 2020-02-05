# Single Machine - Masterless - Internal Formula

This demonstrates creating formulas of your own design to test locally.

* Vagrant salt provisioner in Salt Masterless mode

Note: Vagrant has a provisioner for Docker, which is not used.  The purpose of this is to demonstrate crafting formulas locally than can then later be placed on on a running VM Instance, such as AWS EC2.

## Instructions

This demonstrates how use an internal Salt Formula to install Docker and then run an Nginx container.

## Usage

```bash
# download ubuntu, launch guest, install salt, provision guest w/ docker formula
vagrant up
# test results
curl localhost:8081
```