{ pkgs ? import (fetchTarball "http://nixos.org/channels/nixos-22.11/nixexprs.tar.xz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.gsettings-desktop-schemas
    pkgs.glib-networking
    pkgs.openssl
    pkgs.which
    pkgs.fish
    pkgs.gettext
    pkgs.python310#Full
    pkgs.python310Packages.pip
    pkgs.librsvg
    pkgs.gtk3
    pkgs.gobject-introspection
    pkgs.gtksourceview4
    pkgs.farstream
    pkgs.python310Packages.pygobject3
    pkgs.gnome.adwaita-icon-theme
    pkgs.libsoup_3
    pkgs.python310Packages.gst-python
    pkgs.gtksourceview4
    pkgs.dtach
  ];

  shellHook = ''
    export GIO_EXTRA_MODULES="${pkgs.glib-networking.out}/lib/gio/modules"
  '';
}

