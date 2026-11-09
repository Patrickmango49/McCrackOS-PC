# McCrack-COS Roadmap

This roadmap describes the intended stages. Items are not complete until implemented and tested.

## Phase 0 — Project foundation
- [x] Create the dedicated GitHub repository
- [x] Establish initial documentation and folder structure
- [x] Confirm Debian 13 (Trixie) and KDE Plasma
- [x] Record the first technical decisions

## Phase 1 — Linux foundation
- [x] Select and pin a supported Linux base release
- [x] Define the initial package set and desktop session
- [x] Create a reproducible live-image build configuration
- [ ] Build the first live ISO successfully
- [ ] Boot and inspect it in a virtual machine

## Phase 2 — McCrack identity and desktop
- [x] Create the first original McCrack-COS wallpaper
- [x] Add initial dark KDE defaults with cyan accent
- [x] Add McCrack-COS console welcome branding
- [ ] Customize login and startup experience beyond stock Breeze
- [ ] Configure and verify the desktop panel and launcher
- [ ] Verify keyboard, mouse, display, audio, and networking in a VM

## Phase 3 — McCrack applications
- [ ] Decide how each web app should be packaged and launched
- [ ] Add application launchers and icons
- [ ] Integrate McCrackTube, McCrackify, McCrackChat, and McCrackFlix where compatible
- [ ] Document sign-in, connectivity, and offline limitations

## Phase 4 — Installer and release
- [ ] Configure a safe installation experience
- [ ] Automate and verify ISO builds
- [ ] Test installation in a disposable virtual machine
- [ ] Publish versioned test images and checksums
- [ ] Prepare hardware compatibility notes and user instructions

## Release principles
- Prefer reversible changes and small commits.
- Keep source configuration in Git; do not commit generated ISO files.
- Never treat a successful build as proof of hardware compatibility.
- Do not recommend installation on a primary computer until the installer and recovery process have been tested.
