## My desktop Linux OS, based on [BlueBuild](https://github.com/blue-build/template)

This is essentially Fedora Silverblue, but with the following differences:

- Baked in extensions are removed. You can install extensions using the Extension Manager app
- Baked in apps are mostly removed. All apps are Flatpaks with the exception of the terminal, file manager and the Disks app
- A selection of my usual (Flatpak) apps are added
- Docker and Tailscale are included

There's an NVIDIA version which includes its drivers, and there's a server version that excludes the desktop and apps. Server version is only for amd64, sadly.

### To rebase an existing atomic Fedora installation to the latest build:

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
