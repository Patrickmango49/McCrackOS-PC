# McCrack-COS

A Linux-based desktop operating system project built around the McCrack ecosystem.

The goal is to create a polished, approachable desktop experience with McCrack branding and applications, then package it as a bootable ISO that can be tested in a virtual machine before installation on physical hardware.

## Project status

**Early planning and repository setup.** This repository is not yet an installable operating system and does not contain a bootable ISO.

## Development approach

We will build on an established Linux distribution rather than writing an operating system kernel from scratch. The repository will hold our configuration, branding, scripts, application integration, documentation, and automated build definitions. The Linux base and required packages will be retrieved by the build process rather than copied wholesale into Git.

The current proposed direction is **Debian + KDE Plasma**, pending confirmation. This is a design decision, not a completed implementation.

## Planned experience

- McCrack-branded startup, login, desktop, and application launcher
- A consistent dark interface with cyan accents
- Desktop customization, wallpapers, icons, and system settings
- McCrack applications integrated as desktop apps
- A documented, repeatable ISO build
- Virtual-machine testing before any real-device installation

## Repository layout

- `branding/` — logos, wallpapers, icons, and visual assets
- `config/` — distribution and desktop configuration
- `applications/` — integration definitions for McCrack apps
- `scripts/` — setup, customization, and build scripts
- `docs/` — architecture, decisions, testing, and release notes

## Safety and testing

The first bootable builds will be tested in a virtual machine. Do not install experimental builds over an existing operating system or use them on a computer containing important data. Hardware support and installer behavior must be checked before recommending a physical installation.

## Roadmap

See [ROADMAP.md](ROADMAP.md) for planned milestones and [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md) for the proposed technical structure.
