## My desktop Linux OS, based on [BlueBuild](https://github.com/blue-build/template)

This is essentially Fedora Silverblue, but with the following differences:

- Baked in extensions are mostly removed. You can install extensions using the Extension Manager app
- Baked in apps are mostly removed. All apps are Flatpaks with the exception of the terminal, file manager and the Disks app
- A selection of my usual (Flatpak) apps are added _(this is currently broken)_
- Docker and Tailscale are included

There's an NVIDIA version which includes its drivers, and there's a server version that excludes the desktop and apps.

## Rebasing from another atomic Fedora system

If you're bringing up a new system, [install Silverblue](https://fedoraproject.org/atomic-desktops/silverblue/download) first and then follow the instructions below to move to Silvercore.

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/arteeh/silvercore-bluebuild
  ```
- Reboot:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/arteeh/silvercore-bluebuild
  ```
- Reboot again
  ```
  systemctl reboot
  ```
- (NVIDIA only) Set up NVIDIA drivers
  ```
  ujust configure-nvidia
  ```
- Reboot again
  ```
  systemctl reboot
  ```