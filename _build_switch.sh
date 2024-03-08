#!/bin/bash
#scons platform=linuxbsd target=editor tests=true warnings=extra werror=yes module_text_server_fb_enabled=yes dev_build=yes scu_build=yes

scons platform=switch target=template_release tests=false warnings=extra werror=yes debug_symbols=no module_text_server_fb_enabled=yes
cp ./bin/godot.switch.template_release.arm64 /home/thomas/.local/share/godot/export_templates/4.1.3.stable/switch_release.arm64