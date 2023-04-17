# What is this?

It's a port of the Godot open source game engine to the Switch, via homebrew libraries provided by `devkitPro` /`switchbrew`.

See the original README-original.md for info about Godot.

## Releases

See [the GitHub releases page](https://github.com/Stary2001/godot/releases) for pre-built editors for Windows, macOS and Linux.

## How do I export my game?

The editor builds above add a `Switch` exporter to the list - it will generate a `.nro` and a `.pck` file that can be transferred to your Switch.

Both file `.nro` and `.pck` nned to be "placed" in thte `switch` folder of you switch. Use your preferred method it could be directly mount your SD in your PC, using ftp app.

## How do I debug my game?

If additional debugging is required, sending the `.nro` via `nxlink` (make sure to send it to the right place with the -p argument) will allow the output of the console to be viewed on PC. Note: this will only send the `.nro` not the `.pck` so make sure the later get in the right place before trying to debug!

## How to build?

You shouldn't need to build the engine if you use a release as the templates should be included - these instructions are for development!

Install `devkitpro`

Install these packages from devkitPro pacman:
`switch-pkg-config switch-freetype switch-bulletphysics switch-libtheora switch-libpcre2 switch-mesa switch-opusfile switch-mbedtls switch-libwebp switch-libvpx switch-miniupnpc switch-libzstd switch-wslay`.

Then make sure `devkitPro` is "visible" with: `source /etc/profile.d/devkit-env.sh`.

Finally run `scons platform=switch` in the root of the repo.

Now the template is ready to be used, if you want to use it right now make sure to "install" it in your current godot templates folder. It can be done with: `./scripts/install-template.sh`

## How can I get help?

Either make an issue on this repo, or join the [Discord](https://discordapp.com/invite/yUC3rUk)!

## Credits

* Thanks to `devkitPro` / `switchbrew` for producing `devkitA64/libnx`.
* Extra special thanks to fincs from devkitPro - This port would have never been possible without their port of the open source nouveau graphics driver.
* cpasjuste for help with development.
* fhidalgosola/utnad for their port / help with development.
