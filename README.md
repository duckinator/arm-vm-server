# arm-vm-server
Documenting my attempt to set up an ARM-based VM server.

## Manual setup

Based on <https://wiki.debian.org/KVM>:

```
$ sudo apt update
$ sudo apt upgrade
$ sudo apt install --no-install-recommends qemu-system qemu-efi-aarch64 qemu-utils libvirt-daemon-system libvirt-clients dnsmasq dmidecode
$ sudo adduser puppy libvirt
$ sudo virsh list --all
```
