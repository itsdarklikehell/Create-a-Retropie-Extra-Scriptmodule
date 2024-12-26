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

rp_module_id="lr-fceumm-mod"
rp_module_desc="NES emu - FCEUmm port for libretro"
rp_module_help="ROM Extensions: .nes .zip\n\nCopy your NES roms to $romdir/nes\n\nFor the Famicom Disk System copy your roms to $romdir/fds\n\nFor the Famicom Disk System copy the required BIOS file disksys.rom to $biosdir"
rp_module_licence="GPL2 https://raw.githubusercontent.com/libretro/libretro-fceumm/master/Copying"
rp_module_repo="git https://github.com/zerojay/libretro-fceumm-mod.git master"
rp_module_section="exp"

function sources_lr-fceumm-mod() {
    gitPullOrClone
}

function build_lr-fceumm-mod() {
    make -f Makefile.libretro clean
    make -f Makefile.libretro
    md_ret_require="$md_build/fceumm-mod_libretro.so"
}

function install_lr-fceumm-mod() {
    md_ret_files=(
        'Authors'
        'changelog.txt'
        'Copying'
        'fceumm-mod_libretro.so'
        'whatsnew.txt'
        'zzz_todo.txt'
    )
}

function configure_lr-fceumm-mod() {
    mkRomDir "nes"
    mkRomDir "fds"
    ensureSystemretroconfig "nes"
    ensureSystemretroconfig "fds"

    local def=1
    isPlatform "armv6" && def=0

    addEmulator "$def" "$md_id" "nes" "$md_inst/fceumm-mod_libretro.so"
    addEmulator 0 "$md_id" "fds" "$md_inst/fceumm-mod_libretro.so"
    addSystem "nes"
    addSystem "fds"
}