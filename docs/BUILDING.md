# Building the first McCrack-COS image

## What this build produces

The first milestone is a **Debian 13 (Trixie) KDE Plasma live ISO** for 64-bit PCs. It is intended for virtual-machine testing. It is not yet the final installable McCrack-COS release and must not be treated as ready to replace an existing operating system.

## Automated build

1. Open the repository's **Actions** tab.
2. Select **Build McCrack-COS live image**.
3. Choose **Run workflow** on the `main` branch.
4. Wait for the job to finish.
5. Download the `McCrack-COS-live-amd64` artifact from the completed run.

The build runs inside a Debian Trixie container and uses the configuration in `auto/config`.

## Local build

Use a disposable Debian Trixie amd64 virtual machine with sufficient free disk space and memory. Install the build tools:

```sh
sudo apt update
sudo apt install live-build xorriso
```

Clone the repository, enter its directory, and run:

```sh
sudo ./scripts/build-local.sh
```

The resulting image should be named `live-image-amd64.hybrid.iso`.

## Virtual-machine test checklist

- Boot the ISO without attaching a physical disk.
- Confirm the desktop starts and the display is usable.
- Test keyboard and mouse input.
- Test networking and browser launch.
- Test audio if the VM provides an audio device.
- Confirm the system can shut down and reboot cleanly.
- Record errors and the VM configuration used.

Do not install this early image on a primary computer. A live image is not proof that an installer, storage configuration, or every hardware device is supported. Installer support is a later milestone.

## Build troubleshooting

The workflow log is the source of truth for build failures. Package names and build dependencies can change as Debian updates; fix and retest errors before publishing an image as usable.
