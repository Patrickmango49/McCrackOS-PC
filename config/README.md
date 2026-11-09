# System Configuration

The first image targets Debian 13 (Trixie), amd64, and KDE Plasma.

- `../auto/config` defines the Debian Live image settings.
- `package-lists/mccrack-desktop.list.chroot` selects software installed into the live system.
- Future desktop defaults, branding, hooks, and system settings will be added here after the first clean live image boots successfully.

The first ISO is for virtual-machine testing. Installer support and physical-device installation are separate milestones.
