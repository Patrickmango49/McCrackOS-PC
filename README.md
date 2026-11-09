# McCrack-COS

A Linux-based desktop operating system project built around the McCrack ecosystem.

The goal is to create a polished, approachable desktop experience with McCrack branding and applications, then package it as a bootable ISO that can be tested in a virtual machine before installation on physical hardware.

## Project status

**Foundation configuration started.** The approved base is Debian 13 (Trixie) on amd64 with KDE Plasma. The repository now contains an initial Debian Live build configuration and an automated GitHub Actions workflow. No successful ISO build or VM test has been confirmed yet.

## Development approach

We are building on Debian rather than writing an operating-system kernel from scratch. The repository holds our configuration, branding, scripts, application integration, documentation, and automated build definitions. Debian and the required packages are retrieved during the build instead of storing a full copy of Linux in Git.

## Planned experience

- McCrack-branded startup, login, desktop, and application launcher
- A consistent dark interface with cyan accents
- Desktop customization, wallpapers, icons, and system settings
- McCrack applications integrated as desktop apps
- A documented, repeatable ISO build
- Virtual-machine testing before any real-device installation

## Repository layout

- `auto/` — Debian Live build configuration entry point
- `branding/` — logos, wallpapers, icons, and visual assets
- `config/` — package lists and system configuration
- `applications/` — integration definitions for McCrack apps
- `scripts/` — setup, customization, and local build scripts
- `.github/workflows/` — automated ISO build workflow
- `docs/` — architecture, build instructions, decisions, and testing

## Safety and testing

The first image is a live test image, not an approved installer. It must be tested in a virtual machine before any attempt to install it on physical hardware. Do not install experimental builds over an existing operating system or use them on a computer containing important data. Hardware support and installer behavior must be checked before recommending a physical installation.

## Roadmap

See [ROADMAP.md](ROADMAP.md), [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md), and [docs/BUILDING.md](docs/BUILDING.md).
