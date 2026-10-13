# BraySettings 0.1 (experimental source)

For iPhone 11 / iOS 16.6 / Dopamine rootless. This is **not** a compiled .deb.

Build on macOS with Theos, Xcode command line tools and iOS SDK:

```sh
export THEOS="$HOME/theos"
make clean package FINALPACKAGE=1
```

The .deb will be in `packages/`. Install through Sileo and restart Settings.

**Scope:** First-pass dark table/cell styling only. It does not implement the iOS 26 floating search bar, rearrange Battery/VPN, or guarantee an exact match. Hooks are experimental and may affect subpages. Remove the package via Sileo if Settings misbehaves. Avoid installing simultaneously with other Settings styling tweaks.

## GitHub Actions
Upload the *contents* of this folder to the root of a GitHub repository (including `.github/workflows/build.yml`). In GitHub, open Actions > Build BraySettings DEB > Run workflow. Once successful, download the BraySettings-rootless-deb artifact and extract its .deb file. This is an experimental build, not tested on an iPhone. If a build step fails, inspect the Actions logs; SDK/toolchain availability can change.
