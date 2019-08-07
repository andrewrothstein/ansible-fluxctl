andrewrothstein.fluxctl
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-fluxctl.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-fluxctl)

Installs the [Wave Flux CLI](https://docs.fluxcd.io/en/latest/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.fluxctl
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
