# Vault Orca
![vault orca](./orca.svg?raw=true "Vault Orca")

Vault Orca is a simple docker image to watch and unseal a Hashicorp Vault server when available.
Each orca container own one key share.

**This image is not safe, since you are exposing your unseal keys on docker-compose. Don't use it on production.**

## Usage

To use Vault Orca you need to set 3 environment variables:
- VAULT_URL: the vault server URL
- UNSEAL_KEY: the master key share that belongs to this container
- MINUTES: the delay between unseal checks

## Example docker-compose

```yml
version: '3'

services:
  orca:
    container_name: orca
    image: alpine:3.11
    command: crond -f -l 8
    environment:
      VAULT_URL: https://vault.example:8200
      UNSEAL_KEY: KEY
      MINUTES: 5
```
