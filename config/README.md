# System Configuration

The first image targets Debian 13 (Trixie), amd64, and KDE Plasma.

- `../auto/config` defines the Debian Live image settings.
- `package-lists/mccrack-desktop.list.chroot` selects software installed into the live system.
- `includes.chroot/` provides files copied into the generated system, including the first KDE dark/cyan defaults, welcome text, and wallpaper.

The first ISO is for virtual-machine testing. Installer support and physical-device installation are separate milestones.
