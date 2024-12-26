#!/usr/bin/env bash

# This file is part of RetroPie-Extra, a supplement to RetroPie.
# For more information, please visit:
#
# https://github.com/RetroPie/RetroPie-Setup
# https://github.com/Exarkuniv/RetroPie-Extra
#
# See the LICENSE file distributed with this source and at
# https://raw.githubusercontent.com/Exarkuniv/RetroPie-Extra/master/LICENSE
#

rp_module_id="lr-craft"
rp_module_desc="Minecraft engine - Craft port for libretro"
rp_module_licence="MIT https://raw.githubusercontent.com/libretro/Craft/master/LICENSE.md"
rp_module_repo="git https://github.com/libretro/Craft master"
rp_module_section="exp"
rp_module_flags="!rpi5"

function sources_lr-craft() {
    gitPullOrClone
}

function build_lr-craft() {
    make -f Makefile.libretro clean
    make -f Makefile.libretro
    md_ret_require="$md_build/craft_libretro.so"
}

function install_lr-craft() {
    md_ret_files=(
        'craft_libretro.so'
    )
}

function configure_lr-craft() {
    setConfigRoot "ports"

    addPort "$md_id" "craft" "Craft" "$md_inst/craft_libretro.so"

    ensureSystemretroconfig "ports/craft"
}