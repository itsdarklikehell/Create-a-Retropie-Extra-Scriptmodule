#! /usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="lr-applewin"
rp_module_desc="Apple2e emulator: AppleWin (current) port for libretro"
rp_module_help="ROM Extension: .po .dsk .nib .PO .DSK .NIB .zip\n\nCopy your roms to $romdir/apple2"
rp_module_licence="GPL2 https://raw.githubusercontent.com/audetto/AppleWin/master/LICENSE"
rp_module_repo="git https://github.com/audetto/AppleWin.git master"
rp_module_section="exp"
rp_module_flags=""


function depends_lr-applewin() {
    local depends=(
        cmake
        libboost-program-options-dev
        libevdev-dev
        libgles-dev
        libminizip-dev
        libpcap-dev
        libsdl2-dev
        libsdl2-image-dev
        libyaml-dev
        meson
        ninja-build
    )
    getDepends "${depends[@]}"
}

function sources_lr-applewin() {
    gitPullOrClone $md_build/../libslirp https://gitlab.freedesktop.org/slirp/libslirp.git
    gitPullOrClone
    # make sure resources/ will be looked up at /opt/retropie/libretrocores/lr-applewin/
    sed -i s,CMAKE_SOURCE_DIR,\"$md_inst\", \
        $md_build/source/frontends/common2/gnuframe.cpp
}

function build_lr-applewin() {
    # for libslirp
    pushd $md_build/../libslirp
    meson build
    ninja -C build install
    popd

    # for AppleWin
    mkdir target
    cd target
    cmake -DBUILD_LIBRETRO=ON -DCMAKE_BUILD_TYPE=RELEASE ..
    make clean
    make
    md_ret_require="$md_build/target/source/frontends/libretro/applewin_libretro.so"
}

function install_lr-applewin() {
    rm -rf $md_build/../libslirp
    md_ret_files=(
        'LICENSE'
        'resource/'
        'target/source/frontends/libretro/applewin_libretro.so'
    )
}

function configure_lr-applewin() {
    mkRomDir "apple2"

    if [[ "$md_mode" == "install" ]] ; then
        defaultRAConfig "apple2" "input_auto_game_focus" "0" # 0: off, 1: on, 2: detect
        defaultRAConfig "apple2" "load_dummy_on_core_shutdown" "false"
        # Disable at all if defined in parent Retroarch configs or
        # adjust button number below to your controller setup.
        # cf: https://retropie.org.uk/docs/RetroArch-Configuration/#determining-button-values
        defaultRAConfig "apple2" "input_game_focus_toggle_btn" "3"
    fi

    addEmulator 0 "$md_id" "apple2" "$md_inst/applewin_libretro.so"
    addSystem "apple2"
}