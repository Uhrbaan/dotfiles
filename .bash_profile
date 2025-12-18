export PATH="$HOME/.local/texlive/2025/bin/x86_64-linux:$PATH"
export MANPATH="$HOME/.local/texlive/2025/texmf-dist/doc/man:$MANPATH"
export INFOPATH="$HOME/.local/texlive/2025/texmf-dist/doc/info:$INFOPATH"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin/"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.platformio/penv/bin"

export XDG_DATA_DIRS="$XDG_DATA_DIRS:$HOME/snap/code/191/.local/share/flatpak/exports/share"
export PATH="$PATH:$HOME/.local/bin/"
export XDG_CONFIG_HOME="$HOME/.config"
export IDF_PATH="$HOME/Projets/esp-idf/"

# for typst
export export TYPST_FONT_PATHS="$HOME/.local/share/fonts"
. "$HOME/.cargo/env"

# For VM
export LIBVIRT_DEFAULT_URI="qemu:///system"
