generate-sources:
    git submodule update --remote --checkout
    ./flatpak-cargo-generator ./alacritty/Cargo.lock

build-and-install: generate-sources
    flatpak run org.flatpak.Builder --force-clean --install --user build-dir com.valvesoftware.Steam.Utility.Alacritty.json
