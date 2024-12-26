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

rp_module_id="lr-sameboy"
rp_module_desc="Game Boy (Color) emulator - SameBoy Port for libretro"
rp_module_help="ROM Extensions: .gb .gbc .zip .7z\n\nCopy your Gameboy roms to $romdir/gb.\nCopy your Gameboy Color roms to $romdir/gbc.\n\nCopy the required BIOS files dmg_boot.bin (gb BIOS) and cgb_boot.bin (gbc BIOS) to $biosdir"
rp_module_licence="MIT https://raw.githubusercontent.com/libretro/SameBoy/buildbot/LICENSE"
rp_module_repo="git https://github.com/libretro/SameBoy.git buildbot"
rp_module_section="exp x86=opt"
rp_module_flags="!rpi5"

function depends_lr-sameboy() {
    # For lr-Sameboy
    local depends=(clang libsdl2-dev)
    # For rgbds:
    #depends+=(byacc flex libpng-dev)
    getDepends "${depends[@]}"
}

function sources_lr-sameboy() {
    gitPullOrClone
}

function build_lr-sameboy() {
    make clean
    CC=clang make -f Makefile libretro
    md_ret_require="$md_build/libretro/sameboy_libretro.so"
}

function install_lr-sameboy() {
    md_ret_files=(
	'libretro/sameboy_libretro.so'
    )
}

function configure_lr-sameboy() {
    local system
    for system in gb gbc; do
        mkRomDir "$system"
        ensureSystemretroconfig "$system"

        local def=0
        isPlatform "armv6" && def=1

        addEmulator 1 "$md_id" "$system" "$md_inst/sameboy_libretro.so"
        addSystem "$system"
    done
}