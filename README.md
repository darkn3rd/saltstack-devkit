# Salt Stack DevKit

The purpose for this is to bring up an disposable dev environments that is useful to test Salt Stack formulas.

## Initial Release

This demonstrates how use an external Salt Formula (nginx-formula as an example) to configure a system with Masterless Salt.

## Usage

```bash
# download ubuntu, launch guest, install salt, provision guest w/ nginx formula
vagrant up
# test results
curl localhost:8080
```