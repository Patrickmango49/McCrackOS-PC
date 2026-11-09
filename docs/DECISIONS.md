# Technical Decision Log

Record important project decisions here so the build remains consistent.

## Pending decisions

- [ ] Linux base distribution and release
- [ ] Desktop environment
- [ ] Live-image / installer build tool
- [ ] Application packaging approach
- [ ] ISO build and release workflow

## Current recommendations

- Linux base: Debian (not yet approved)
- Desktop: KDE Plasma (not yet approved)
- Build model: reproducible configuration stored in Git; retrieve base packages during build
- Testing: virtual machine first, physical hardware only after compatibility checks
