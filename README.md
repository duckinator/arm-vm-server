# arm-vm-server
Documenting my attempt to set up an ARM-based VM server.

## Manual setup

Based on <https://wiki.debian.org/KVM>:

```
$ sudo apt update
$ sudo apt upgrade
$ sudo apt install --no-install-recommends qemu-system libvirt-daemon-system libvirt-clients qemu-efi-aarch64 dnsmasq dmidecode
$ sudo adduser puppy libvirt
$ sudo virsh list --all
```
