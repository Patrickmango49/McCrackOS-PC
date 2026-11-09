# Proposed Architecture

## Overview

McCrack-COS will be a customized Linux distribution assembled from an existing Linux base. It will not initially include a custom kernel or independently written hardware drivers.

## Layers

1. **Linux base** — kernel, boot process, system services, package management, and hardware support supplied by the selected distribution.
2. **Desktop environment** — window manager, panels, launcher, desktop settings, and session. KDE Plasma is the current recommendation, pending confirmation.
3. **McCrack configuration** — visual theme, icons, wallpapers, login experience, defaults, and system configuration.
4. **Applications** — desktop launchers and packaging/integration for McCrack web applications.
5. **Image build** — reproducible configuration that assembles a live/installer ISO from the selected base and packages.

## Repository responsibilities

This repository should contain the customizations and instructions that define McCrack-COS. It should not contain a duplicate copy of the entire Linux distribution or downloaded package archives.

Generated images, temporary build directories, caches, and virtual-machine disks belong outside Git history.

## Application integration

The first version should favor supported web-app packaging or browser-based launchers instead of trying to rewrite every McCrack app as a native Linux application. Each integration must document whether it requires an internet connection, an account, or a separately hosted backend.

## Build and test strategy

The build must be repeatable from documented inputs. Each ISO should identify its base release and build revision. Initial testing should happen in a disposable virtual machine, with snapshots and no access to important host data.

Physical hardware testing comes later and must check device-specific compatibility, installation behavior, networking, graphics, audio, suspend/resume, and recovery.
