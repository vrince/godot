# What is this?

It's a port of the Godot open source game engine to the Switch, via homebrew libraries provided by devkitPro/switchbrew.
See the original README-original.md for info about Godot.

## Releases

See [the GitHub releases page](https://github.com/Stary2001/godot/releases) for pre-built editors for Windows, macOS and Linux.

## How do I export my game?

The editor builds above add a `Switch` exporter to the list - it will generate a .nro and a .pck file that can be transferred to your Switch.
If additional debugging is required, sending the nro via nxlink (make sure to send it to the right place with the -p argument) will allow the output of the console to be viewed on PC.

## How to build?

You shouldn't need to build the engine if you use a release as the templates should be included - these instructions are for development!

Install `devkitpro`

Install these packages from devkitPro pacman:
`switch-pkg-config switch-freetype switch-bulletphysics switch-libtheora switch-libpcre2 switch-mesa switch-opusfile switch-mbedtls switch-libwebp switch-libvpx switch-miniupnpc switch-libzstd switch-wslay`.

then `source /etc/profile.d/devkit-env.sh`.

then run `scons platform=switch` in the root of the repo.

# How can I get help?

Either make an issue on this repo, or join the [Discord](https://discordapp.com/invite/yUC3rUk)!

# Credits

* Thanks to devkitPro / switchbrew for producing devkitA64/libnx.
* Extra special thanks to fincs from devkitPro - This port would have never been possible without their port of the open source nouveau graphics driver.
* cpasjuste for help with development.
* fhidalgosola/utnad for their port / help with development.
