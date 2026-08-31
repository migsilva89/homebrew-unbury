# Homebrew tap for Unbury

[Unbury](https://unbury.migsilva.dev) finds a saved link when you have forgotten
what it was called. It reads the bookmarks already in your browser and searches
them by meaning rather than by matching words.

```sh
brew install --cask migsilva89/unbury/unbury
```

Requires macOS 14 or later on Apple Silicon. The app updates itself after that,
so `brew upgrade` is not the only route — but it works too.

This repository holds one file: the cask that names the current version and the
checksum of its disk image. It is written by `Support/tap.sh` in the
[app's repository](https://github.com/migsilva89/unbury) whenever a release is
published, and there is nothing here to edit by hand.
