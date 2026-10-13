# BraySettings 0.2 — experimental

For iPhone 11 / iOS 16.6 / Dopamine rootless. This is an **appearance-only** experiment: it darkens table backgrounds, cells and navigation bars in Settings. It **does not** yet recreate the iOS 26 Apple Account card, reorder Battery/VPN, add floating Search, or guarantee a pixel-perfect result. Not device-tested.

## Upload from Safari

Upload `Makefile`, `Tweak.xm`, `BraySettings.plist`, `control` and `README.md` to the repository root (overwrite the existing files). Create or replace `.github/workflows/build.yml` with the included version. GitHub > Actions > Build BraySettings DEB > Run workflow. When green, download artifact ZIP, extract `.deb` and install with Sileo. If red, share the failed step's log. The workflow has not been run here.

## Safety

Back up your device first. If Settings crashes, remove `com.bray.braysettings` from Sileo or disable injection for Preferences in your jailbreak's tweak manager, then respring. No iOS system files are overwritten.

## Build requirements

The archive contains source code, not a compiled .deb. A genuine tweak needs Theos, an iOS SDK, and an arm64 iOS toolchain. Build with `make package THEOS_PACKAGE_SCHEME=rootless`. The .deb appears in `packages/` only after successful compilation. Do not install a placeholder package.
