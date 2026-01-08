{
  mkShell,
  stdenv,
  alejandra,
  bash,
  nodejs,
  yarn,
  # Rust
  cargo,
  rustc,
  rust-analyzer,
  rustfmt,
  clippy,
  rustPlatform,
  # System
  pkg-config,
  openssl,
  lib,
}:
mkShell {
  name = "album-ranker";

  nativeBuildInputs = [
    bash
    nodejs
    yarn

    # Rust
    cargo
    rustc
    rust-analyzer
    rustfmt
    clippy

    # System
    pkg-config

    # Required for CI for format checking.
    alejandra
  ];

  buildInputs = [
    openssl
  ];

  RUST_SRC_PATH = "${rustPlatform.rustLibSrc}";
}
