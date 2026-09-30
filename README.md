# pch Homebrew tap

Install [RAWmakase](https://github.com/pch/rawmakase), a non-destructive RAW photo
developer for macOS 15 or newer, on Apple Silicon or Intel:

```sh
brew install --cask pch/tap/rawmakase
```

Update or remove the app:

```sh
brew upgrade --cask rawmakase
brew uninstall --cask rawmakase
```

The cask downloads the signed and notarized DMG from RAWmakase's GitHub releases.
Stable releases update this tap automatically after checksum, Homebrew audit,
installation and signature checks in the
[publishing workflow](https://github.com/pch/rawmakase/actions/workflows/homebrew.yml).

Report app or installation issues in
[RAWmakase's issue tracker](https://github.com/pch/rawmakase/issues).
