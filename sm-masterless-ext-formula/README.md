# Single Machine - Masterless - External Formula

This demonstrates using an external Salt Formula with the Vagrant Salt provider.  It does the following:

* Salt Minion configuration to allow use of external formula
* Vagrant salt provisioner configured to use new minion configuration in Salt Masterless mode
* Vagrant shell provisioner used to install prerequisite python modules needed for external formulas

## Instructions

This demonstrates how use an external Salt Formula (nginx-formula as an example) to configure a system with Masterless Salt.

## Usage

### Python 2

```bash
# download ubuntu, launch guest, install salt, provision guest w/ nginx formula
vagrant up
# test results
curl localhost:8080
```

### Python 3

```bash
# download ubuntu, launch guest, install salt, provision guest w/ nginx formula
PYTHON=python3 vagrant up
# test results
curl localhost:8080
```

