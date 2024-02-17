## My desktop Linux OS, based on [BlueBuild](https://github.com/blue-build/template)

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/arteeh/linux:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/arteeh/linux:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```
