# Technical Decision Log

## Approved foundation

- **Linux base:** Debian 13 (Trixie), pinned by codename for predictable builds.
- **Architecture:** amd64 (64-bit Intel/AMD PCs) for the first milestone.
- **Desktop:** KDE Plasma.
- **Image builder:** Debian Live `live-build`.
- **Initial output:** VM-testable live ISO; installer work comes after the live desktop is validated.
- **Build automation:** GitHub Actions using a Debian Trixie container.

## Why this approach

Debian Live's `live-build` assembles a live system from a configuration tree and package lists. This lets the repository describe McCrack customizations without storing a full copy of Debian in Git. KDE Plasma provides the desktop shell, while Debian supplies the kernel, system services, package management, and hardware support.

## Future decisions

- Login and desktop theme implementation
- McCrack application packaging and launchers
- Installer technology and disk-install workflow
- Update and release strategy
- Additional architectures, if needed
