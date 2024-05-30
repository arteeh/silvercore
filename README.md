## My desktop Linux OS, based on [BlueBuild](https://github.com/blue-build/template)

This is essentially Fedora Silverblue, but with the following differences:

- Baked in extensions are removed. You can install extensions using the Extension Manager app
- Baked in apps are mostly removed. All apps are Flatpaks with the exception of the terminal, file manager and the Disks app
- A selection of my usual (Flatpak) apps are added _(this is currently broken)_
- Docker and Tailscale are included

There's an NVIDIA version which includes its drivers, and there's a server version that excludes the desktop and apps.

## ISO's

### [Silvercore](https://drive.proton.me/urls/MGQRATAC8R#rGMBgzz8W6lT) ([Checksum](https://drive.proton.me/urls/HWGZ04CRVG#OFKD1p3xAEq5))

### [Silvercore NVIDIA](https://drive.proton.me/urls/TS9234Q6BW#9xxkZaa2nK4l) ([Checksum](https://drive.proton.me/urls/86XBMXHCB4#esn8h93u4LnZ))

### [Silvercore Server](https://drive.proton.me/urls/MANX4QQH14#4SjJodf5g5Ce) ([Checksum](https://drive.proton.me/urls/Z89RKBF7GG#EoD3XUXOO1Xk))

## Rebasing from another atomic Fedora system

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/arteeh/silvercore:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/arteeh/silvercore:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```
