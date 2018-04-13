# Common

Provides common configuration for my laptop.

## Requirements

None

## Role Variables
| Variable        | Required | Default  | Description |
| --------------- | -------- | -------- | ----------- |
| `common_packages`  | :x:      | `[]` |             |
| `common_repos_rpms` | :x:      | `[]`     |             |
| `common_kernel_install_limit` | :x:      | `3`     |             |


## Dependencies

None

## Example Playbook

```yaml
- hosts: localhost
  vars:
    common_packages:
      - ansible
      - git
    common_repos_rpms:
      - https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-{{ ansible_distribution_major_version }}.noarch.rpm
      - https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-{{ ansible_distribution_major_version }}.noarch.rpm
    common_kernel_install_limit: 6
  roles:
      - common
```
