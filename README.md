## My desktop Linux OS, based on [BlueBuild](https://github.com/blue-build/template)

This is essentially Fedora Silverblue, but with the following differences:

- Baked in extensions are removed. You can install extensions using the Extension Manager app
- Baked in apps are mostly removed. All apps are Flatpaks with the exception of Settings, Software, Disks and the file manager
- Yafti runs on initial startup, in which you can quickly install apps including a selection of my favorites 
- Docker and Tailscale are included

There's an NVIDIA version which includes its drivers, and there's a server version that excludes the desktop and apps.

## Download

[Silvercore.iso](https://drive.proton.me/urls/MGQRATAC8R#rGMBgzz8W6lT) ([checksum](https://drive.proton.me/urls/HWGZ04CRVG#OFKD1p3xAEq5))

[Silvercore-NVIDIA.iso](https://drive.proton.me/urls/TS9234Q6BW#9xxkZaa2nK4l) ([checksum](https://drive.proton.me/urls/86XBMXHCB4#esn8h93u4LnZ))

[Silvercore-Server.iso](https://drive.proton.me/urls/MANX4QQH14#4SjJodf5g5Ce) ([checksum](https://drive.proton.me/urls/Z89RKBF7GG#EoD3XUXOO1Xk))

The official ISO has a bug where it doesn't set the proper ostree remote. When install has finished, install a terminal app like [Ptyxis](https://flathub.org/apps/app.devsuite.Ptyxis) and set it manually:
```
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/arteeh/silvercore
systemctl reboot
```

It's also possible that Yafti doesn't automatically start. Run it like this:
```
yafti /usr/share/ublue-os/firstboot/yafti.yml
```

## Rebasing from another atomic Fedora system

First rebase to the unsigned image, to get the proper signing keys and policies installed:
```
rpm-ostree rebase ostree-unverified-registry:ghcr.io/arteeh/silvercore
```
Reboot:
```
systemctl reboot
```
Then rebase to the signed image, like so:
```
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/arteeh/silvercore
```
Reboot again
```
systemctl reboot
```
(NVIDIA only) Set up NVIDIA drivers
```
ujust configure-nvidia
```
Reboot again
```
systemctl reboot
```
