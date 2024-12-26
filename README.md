# Create-a-Retropie-Extra-Scriptmodule

**WRNING! WIP. NOTHING IS DONE HERE YET, DO NOT USE, GO AWAY. but, if you do: be warned THERE (might) BE DRAGONS ahead..**
Any help would be great on what works and what doesnt

This is supposed to be like a **scriptkiddies way of creating unofficial installation scripts for RetroPie or Exarkuniv's Retropie-Extra** allowing you to quickly and easily **create installation scripts for emulators, ports, libretrocores or anything you can run** that haven't been included in RetroPie for one reason or another. Such scripts can be considered experimental at best.
The wonderfull Exarkuniv has found a lot of such new scripts made by other people and added them to their Repo. they dont take credit for any of them, other then the ones they made

Most of the scripts do work as is.

**This is supposed to be a companion to Retropie-Setup and/or Retropie-Extras, a GUI way of installing a scriptmodule that when run can guide a user with no scripting experience through the process of creating own scriptmodules for RetroPie-Setup through dialogs. Which then can be installed by Retropie-Setup the same way as Retropie-Extra does, I will allso be adding a simple command line way as well.**
think of this as a boilerplate scriptmodule for Retropie-Setup and/or a companion to Retropie-Extras that can itself: guide a user through the process of creating other scriptmodules for RetroPie-Setup through dialogs or simply using a command line way of using this script.


**I DONT HAVE A X86, SO I DIDNT TEST THOSE SCRIPTS, YOUR ARE ON YOUR OWN**

I have changed the list below to show what has been tested to at least to install. I dont have all the games so I cant test them all

Pull requests and issue reports are accepted and encouraged as well as requests. Feel free to use the issue tracker to send me any personal requests for new scripts that you may have.

## Installation with GUI menu,

There is a command line way of using this script, instructions coming soon

The following commands will clone the repo to your system and then run the GUI installer where you may select which of the scriptmodules will be copied into the `RetroPie-Setup` folder.

```bash
cd ~
git clone https://github.com/itsdarklikehell/Create-a-Retropie-Extra-Scriptmodule.git
cd Create-a-Retropie-Extra-Scriptmodule/
./install-creator.sh
```

## Command line way of install

```bash

    ./install-creator.sh [-u|--update] [option] [rp_setup_directory]

Options:
    -a  --all       Add all Create-a-Retropie-Extra-Scriptmodule modules (may severely impact the
                    loading time of RetroPie-Setup and retropiemenu configuration
                    items, especially on slower hardware)
    -c  --create    Create a Retropie-Extra Scriptmodule to install
    -r  --remove    Remove all Create-a-Retropie-Extra-Scriptmodule modules (does not "uninstall" the modules
                    in RP-Setup)
    -h  --help      Display this help and exit
```

The installation script assumes that RetroPie-Setup is installed to `$HOME/RetroPie-Setup`. You may specify an alternate location on command-line, ex:
./install-creator.sh /games/rp-setup

## Usage

After installing **Create-a-Retropie-Extra-Scriptmodule**, the extra scripts will be installed directly in the **RetroPie Setup script** (generally in the experimental section), which you can run from either the command line or from the menu within Emulation Station.

```bash
cd ~
cd RetroPie-Setup/
sudo ./retropie_setup.sh
```

## Updating

The following commands will update Create-a-Retropie-Extra-Scriptmodule to the latest repo and then re-run the installer (your installed scripts will be pre-selected. Just install them again to receive the latest updates.)

```bash
cd ~
cd Create-a-Retropie-Extra-Scriptmodule/
./update-creator.sh
```

## OR

```
cd ~/Create-a-Retropie-Extra-Scriptmodule
git pull origin
```

## Remove

The following commands will remove Create-a-Retropie-Extra-Scriptmodule from your system.

```bash
cd ~
cd Create-a-Retropie-Extra-Scriptmodule/
./remove-creator.sh
```

## Change from the old ZeroJay's repo

If you need to update from ZeroJay's repo - first, discard the most recent commit:

```
git reset --hard HEAD^
```

Switch to ExarKuniv's new repo:

```
git remote set-url origin https://github.com/Exarkuniv/Create-a-Retropie-Extra-Scriptmodule
```

Then pull again from the updated origin:

```
git pull origin
```

Scripts that are unfinished/untested/unpolished/or broken will not be located in this repository and instead have been moved to [Retropie-Extra-Scriptmodule-unstable](https://github.com/Exarkuniv/Retropie-Extra-Scriptmodule-unstable).

If there is a [X] that means it Installs and Plays.
I'll have a note at the end with some Info about it. if there is NO note or [X] **PLEASE LET ME KNOW** if it works for you

#### Emulators

- [x] - `box86.sh` -"Box86 emulator" **Installs Runs fine**
- [x] - `duckstation.sh` -"PlayStation emulator - Duckstation standalone" **Installs Runs fine**
- [x] - `gearboy.sh` - Gameboy emulator - **Installs Plays fine, Need to clean up the controls**
- [ ] - `kat5200.sh` - Atari 8-bit/5200 emulator - **x86 only**
- [x] - `openbor.sh` - Beat 'em Up Game Engine (newest version) - **Tested only on Pi4 so far, installs as a system instead of as a port, direct launching of games from emulationstation supported!**
- [x] - `pico8.sh` - Fantasy Game Emulator - Adds as a new system in RetroPie so you can directly launch carts. **Was told that it works fine, so I'll go with that**
- [ ] - `pokemini.sh` - Pokemon Mini emulator - **x86 only**
- [x] - `ppsspp-dev.sh` - PlayStation Portable emulator PPSSPP - latest development version - **Tested and works on RPi4 (May 2022)**

- [x] - `supermodel-mechafatnick.sh` - Sega Model 3 Arcade emulator - **Installs Does play, test game are slow**
- [x] - `supermodel-svn.sh` - Sega Model 3 Arcade emulator - **Installs Does play, test game are slow**

#### Libretrocores

- [x] - `lr-2048.sh` - 2048 engine - 2048 port for libretro - **Installs, Plays, Runs well**
- [x] - `lr-applewin` - Apple2e emulator - AppleWin (current) port for libretro - **Installs, Plays, Runs well**
- [x] - `lr-arduous_lcd` - ArduBoy emulator - arduous port for libretro- **Installs, Plays, Runs well**
- [x] - `lr-beetle-pce.sh` - PCEngine emu - Mednafen PCE port for libretro**Installs, Plays, Runs well**
- [x] - `lr-bk.sh` - Elektronika БК-0010/0011/Terak 8510a emulator - BK port for libretro - **Installs Plays not sure well or not**
- [ ] - `lr-blastem.sh` - Sega Genesis emu - BlastEm port for libretro - **x86 only**
- [ ] - `lr-boom3.sh` - Doom 3 port for libretro - **x86 only**
- [x] - `lr-bsnes-hd.sh` - "Super Nintendo Emulator - bsnes-HD port for libretro (BETA)" - **Installs, Plays, Runs OK**
- [ ] - `lr-canary.sh` - Citra Canary for libretro - **x86 only**
- [x] - `lr-cannonball.sh` - An Enhanced OutRun engine for libretro - **Installs, Plays, Runs well**
- [x] - `lr-chailove.sh` - 2D Game Framework with ChaiScript roughly inspired by the LÖVE API to libretro - **Installs Plays fine, the one game i could find for it**
- [ ] - `lr-citra.sh` - Citra port for libretro - **x86 only**
- [x] - `lr-crocods.sh` - CrocoDS port for libretro - **Installs Starts but will not finish loading game**
- [ ] - `lr-daphne.sh` - Daphne port to libretro - laserdisk arcade games. - **Installs dont have any games to test**
- [x] - `lr-duckstation.sh` -"PlayStation emulator - Duckstation for libretro"
- [x] - `lr-fceumm-mod.sh` - Modified fceumm core to specifically support the Super Mario Bros 1/3 hack. - **Installs, Plays, Runs well**
- [x] - `lr-freej2me.sh` - A J2ME implementation for old JAVA phone games. - **Installs, Plays, Runs well**
- [x] - `lr-gearboy.sh` - Game Boy (Color) emulator - Gearboy port for libretro. - **Installs, Plays, Runs well**
- [x] - `lr-gearcoleco.sh` - ColecoVision emulator - GearColeco port for libretro. - **Installs, Plays, Runs well**
- [x] - `lr-lutro.sh` - Lua engine - lua game framework (WIP) for libretro following the LÖVE API - **Installs, Plays, Runs well**
- [ ] - `lr-mame2003_midway.sh` - MAME 0.78 core with Midway games optimizations. - **Installs, doesnt start my games**
- [x] - `lr-melonds.sh` - NDS emu - MelonDS port for libretro - **Installs, Plays, Runs**
- [x] - `lr-mesen-s.sh` - Super Nintendo emu - Mesen-S port for libretro - **Installs, Plays, Runs well**
- [] - `lr-mess-jaguar.sh` - Add support for using lr-mess for Jaguar games, uses atarijaguar system name to match lr-virtualjaguar. - **did not test due to not having mess installed yet**
- [x] - `lr-mu.sh` - Palm OS emu - Mu port for libretro - **Installs, Plays, Runs**
- [x] - `lr-oberon.sh` - Oberon RISC emulator for libretro - **Installs**
- [ ] - `lr-openlara.sh` - Tomb Raider engine - OpenLara port for libretro - **Installs Might work, dont have correct files to test**
- [ ] - `lr-play.sh` - PlayStation 2 emulator - Play port for libretro - **x86 only**
- [x] - `lr-potator.sh` - Watara Supervision emulator based on Normmatt version - Potator port for libretro - **Installs, Plays, Runs well**
- [x] - `lr-ppsspp-dev.sh` - PlayStation Portable emu - PPSSPP port for libretro - latest development version - **Tested and works on RPi4 (May 2022)**
- [x] - `lr-prboom-system.sh` - For setting up DOOM as an emulated system, not a port. - **Installs Plays fine**
- [x] - `lr-race.sh` - Neo Geo Pocket (Color) emulator - RACE! port for libretro. - **Installs, Plays, Runs well**
- [x] - `lr-reminiscence.sh` - Flashback engine - Gregory Montoir’s Flashback emulator port for libretro - **Installs, Plays, Runs fine**
- [x] - `lr-sameboy.sh` - Game Boy and Game Boy Color, emulator - SameBoy Port for libretro - **Installs Plays, runs well**
- [ ] - `lr-samecdi` - Philips CDI - same_cdi port for libretro - **Installs, Dont have games to test**
- [x] - `lr-simcoupe.sh` - SAM Coupe emulator - SimCoupe port for libretro - **Installs, Might run games, cant get one to work**
- [x] - `lr-swanstation.sh` - Playstation emulator - Duckstation fork for libretro - **Installs, Plays well**
- [x] - `lr-thepowdertoy.sh` - Sandbox physics game for libretro - **Installs Plays fine**
- [x] - `lr-uzem.sh` - Uzebox engine - Uzem port for libretro - **Installs, Plays well**
- [x] - `lr-vemulator.sh` - SEGA VMU emulator - VeMUlator port for libretro - **Installs Plays fine**
- [x] - `lr-yabasanshiro.sh` - Saturn & ST-V emulator - Yabasanshiro port for libretro - **Installs Plays fine**

#### Ports

- [x] - `0ad.sh` - Battle of Survival - is a futuristic real-time strategy game - **Installs Plays fine**
- [x] - `abuse.sh` - Classic action game - **Installs Plays fine, needs keyboard**
- [x] - `adom.sh` - Ancient Domains of Mystery - a free roguelike by Thomas Biskup - **A keyboard is required to play (press SHIFT+Q to exit the game). Tested and works on RPi4.**
- [x] - `augustus.sh` - Enhanced Caesar III source port - **Installs plays fine, needs mouse**
- [x] - `avp.sh` - AVP - Aliens versus Predator port - **Installs plays fine, needs mouse**
- [x] - `barrage.sh` - Shooting Gallery action game - **Installs, Plays fine, needs mouse**
- [x] - `bermudasyndrome.sh` - Bermuda Syndrome engine - **Installs, plays fine, cant exit, but thats the desine of the engine not the script**
- [x] - `berusky.sh` - Advanced sokoban clone with nice graphics - **Installs, Plays fine**
- [x] - `bloboats.sh` - Fun physics game - **Installs play fine**
- [x] - `boswars.sh` - Battle of Survival - is a futuristic real-time strategy game - **Installs, Plays fine, needs mouse**
- [x] - `breaker.sh` - Arkanoid clone - **Installs, plays fine, need to drop the resolutions to 640-480**
- [x] - `bstone.sh` - BStone A source port of Blake Stone: Aliens of Gold and Blake Stone: Planet Strike **Installs, Plays great**
- [x] - `burgerspace.sh` - BurgerTime clone - **Installs, plays fine, need to drop the resolutions to 640-480**
- [x] - `captains.sh`- Captain 'S' The Remake - **Installs, plays great**
- [x] - `chocolate-doom.sh`- DOOM source port - **Installs, plays great**
- [x] - `chocolate-doom-system.sh`- For setting up DOOM as an emulated system, not port. - **Installs Plays great**
- [x] - `chopper258.sh` - Chopper Commando Revisited - A modern port of Chopper Commando (DOS, 1990) - **Installs, Plays fine, needs keyboard**
- [x] - `corsixth.sh` - CorsixTH - Theme Hospital Engine - **Installs, Plays fine,/W DEMO**
- [x] - `crack-attack.sh` - Tetris Attack clone - **Installs works, but you need to need to drop the resolutions to 640-480**
- [x] - `crispy-doom.sh` - DOOM source port - **Installs, Plays great**
- [x] - `crispy-doom-system.sh` - For setting up DOOM as an emulated system, not port. - **Installs, Plays great**
- [x] - `cytadela.sh` - Cytadela project - a conversion of an Amiga first person shooter. - **Installs, Plays great**
- [x] - `devilutionx.sh` - Diablo source port - **Installs, Plays great w/ DEMO**
- [x] - `dhewm3.sh` - Doom 3 port - **Installs, Plays great w/ DEMO**
- [x] - `diablo2.sh` - Diablo 2 - Lord of Destruction port - **Installs, Plays great**
- [x] - `dosbox-x.sh` - DOSbox-X - Testing of a new DOSbox system - **Installs, Plays great**
- [x] - `dunelegacy.sh` - Dune 2 Building of a Dynasty port - **Installs Play sgreat,/W game**
- [x] - `easyrpgplayer.sh` - RPG Maker 2000/2003 interpreter - **Installs and launches**
- [x] - `ecwolf.sh` - ECWolf is an advanced source port for Wolfenstein 3D - **Installs, Plays great**
- [x] - `eternity.sh` - Enhanced port of the official DOOM source - **Installs, Plays great**
- [x] - `extremetuxracer.sh` - Linux verion of Mario cart - **Installs, Plays great**
- [x] - `fallout1.sh` - Fallout2-ce - Fallout 2 Community Edition - **Installs, Plays great**
- [x] - `fallout2.sh` - Fallout2-ce - Fallout 2 Community Edition - **Installs, Plays great**
- [x] - `freeciv.sh` - Civilization online clone - **Tested and works well**
- [x] - `freedink.sh` - Dink Smallwood engine - **Installs, Plays great**
- [x] - `freesynd.sh` - Syndicate clone - **Installs, Plays great**
- [x] - `fruity.sh` - inspired by the Kaiko classic Gem'X - **Installs, Plays great**
- [x] - `fs2open.sh` - FreeSpace 2 Open - Origin Repository for FreeSpace 2 - **Installs, Plays great**
- [x] - `galius.sh` - - Maze of Galius - **Installs, Plays great**
- [x] - `gmloader.sh` - GMLoader - play GameMaker Studio games for Android on non-Android operating systems - **Installs, Plays great W/games**
- [x] - `gnukem.sh` - Dave Gnukem - Duke Nukem 1 look-a-like - **Installs, Plays great**
- [x] - `gtkboard.sh` - Board games system - **Installs Runs fine**
- [x] - `hcl.sh` - Hydra Castle Labrinth - **Installs, Plays great**
- [x] - `heboris.sh` - Tetris The Grand Master clone - **Installs, Plays great,**
- [x] - `hero2.sh` - FHeroes2 - Heroes of Might and Magic II port - **Installs, Plays great**
- [x] - `hexen2.sh` - Hexen II - Hammer of Thyrion source port Non-OpenGL - **Installs, Plays great w/demo**
- [x] - `hexen2gl.sh` - Hexen II - Hammer of Thyrion source port using OpenGL - **Installs, Plays great w/demo**
- [x] - `hheretic.sh` - Heretic GL port - **Installs, Plays great w/demo**
- [x] - `hhexen.sh` - Hexen GL portt - **Installs, Plays great w/demo**
- [x] - `hurrican.sh` - Turrican clone. - **Installs, Plays great**
- [x] - `ikemen-go.sh` - I.K.E.M.E.N GO - Clone of M.U.G.E.N. - **Installs, Plays great**
- [x] - `ja2.sh` - Stracciatella - Jagged Alliance 2 engine - **Installs, Plays great**
- [x] - `jfsw.sh` - Shadow warrior port - **Installs and runs great**
- [x] - `julius.sh` - Caesar III source port - **Installs, Plays great**
- [x] - `kraptor.sh` - Shoot em up scroller game - **Installs Runs fine**
- [x] - `lbreakout2.sh` - Open Source Breakout game - **Installs Runs fine**
- [x] - `lgeneral.sh` - Open Source strategy game - **Installs Runs fine**
- [x] - `lmarbles.sh` - Open Source Atomix game - **Installs Runs fine, screen is alitte off center**
- [x] - `ltris.sh` - Open Source Tetris game - **Installs, Plays great**
- [x] - `manaplus.sh` - manaplus - 2D MMORPG Client - **x86, cant test, was told it works**
- [x] - `meritous.sh` - Port of an action-adventure dungeon crawl game - **Installs, Plays great**
- [x] - `nblood.sh` - Blood source port - **Installs, Plays great**
- [ ] - `nkaruga.sh` - Ikaruga demake. - **Blocked from installing on Pi4**
- [x] - `nxengine-evo.sh` - The standalone version of the open-source clone/rewrite of Cave Story - **Installs Plays fine on Pi4. Need to bind controller in options**
- [x] - `openclaw.sh` - Reimplementation of Captain Claw - **Installs, Plays great**
- [x] - `opendune.sh` - Dune 2 source port - **Installs Play sgreat,/W game, need to need to drop resolutions to lower for full screen**
- [x] - `openjazz.sh` - An enhanced Jazz Jackrabbit source port - **Installs, Plays great**
- [x] - `openjk_ja.sh` - OpenJK: JediAcademy (SP + MP) - **Installs, Plays great, didnt test MP**
- [x] - `openjk_jo.sh` - OpenJK: Jedi Outcast (SP) - **Installs, Plays great**
- [x] - `openmw.sh` - Morrowind source port - **Installs, Plays great**
- [x] - `openra.sh` - Real Time Strategy game engine supporting early Westwood classics - **Installs, Plays great**
- [x] - `openrct2.sh` - RollerCoaster Tycoon 2 port - **Installs, Plays great**
- [x] - `pcexhumed.sh` - PCExhumed - Powerslave source port - **Installs, Plays great**
- [x] - `piegalaxy.sh` - Pie Galaxy - Download and install GOG.com games in RetroPie - **Installs Runs, Cant login to test**
- [x] - `pingus.sh` - Lemmings clone - **Installs, Plays great**
- [x] - `pokerth.sh` - open source online poker - **Installs, Plays fine**
- [x] - `prboom-plus.sh` - Enhanced DOOM source port - **Installs Plays great**
- [x] - `prototype.sh` - Free R-Type remake by Ron Bunce - Gamepad support incomplete. **Installs, Plays fine, needs keyboard**
- [x] - `pydance.sh` - Open Source Dancing Game - **Installs, Plays fine**
- [x] - `quakespasm.sh` - Another enhanced engine for quake - **Installs, Plays fine Need to keep the resolution low for smooth play and full screen**
- [x] - `rawgl.sh` - Another World Engine - **Installs, Plays great**
- [x] - `rednukem.sh` - Rednukem - Redneck Rampage source port - **Installs, Plays great**
- [x] - `relive.sh` - Oddworld engine for Abe's Oddysee and Abe's Exoddus **Installs Plays well, some graphic glitches**
- [x] - `reminiscence.sh` - Flashback engine clone - **Installs, Plays fine**
- [x] - `revolt.sh` - REvolt - a radio control car racing themed video game - **Installs, Plays fine**
- [ ] - `rickyd.sh` - Rick Dangerous clone - **Blocked from installing on Pi4**
- [x] - `rigelengine.sh` - RigelEngine - Duke Nukem 2 source port - **Installs, Plays great/ with Demo**
- [x] - `rocksndiamonds.sh` - Rocks'n'Diamonds - Emerald Mine Clone - **Installs, Plays great**
- [x] - `rott-darkwar.sh` - Rise of the Triad source port with joystick support - **Installs**
- [x] - `rott-huntbgin.sh` - Rise of the Triad (shareware version) source port with joystick support. - **Installs, Plays great**
- [x] - `rtcw.sh`- IORTCW source port of Return to Castle Wolfenstein. - **Installs, and plays great**
- [x] - `samtfe`- Serious Sam Classic The First Encounter. - **Installs, and plays great**
- [x] - `samtse`- Serious Sam Classic The Second Encounter. - **Installs, and plays great**
- [x] - `sdl-bomber.sh` - Simple Bomberman clone - **Installs, Plays great**
- [x] - `seahorse.sh` - a side scrolling platform game **Installs Plays fine**
- [x] - `septerra.sh` - Septerra Core: Legacy of the Creator port **Installs Plays fine**
- [x] - `shiromino.sh` - Tetris The Grand Master Clone **Installs Plays fine**
- [x] - `shockolate.sh` - Source port of System Shock **Installs Plays fine**
- [x] - `simutrans.sh` - freeware and open-source transportation simulator **Installs Plays fine**
- [x] - `sm64ex.sh` - Super Mario 64 PC Port for Pi4 - Works extremely well on Pi 4. **Installs Plays great**
- [x] - `sorr.sh` - Streets of Rage Remake port - **Installs, Plays great**
- [x] - `sorrv2.sh` - Streets of Rage Remake port - **Installs, Plays great**
- [x] - `sqrxz2.sh` - Sqrxz 2 - Two seconds until death - **Installs, Plays great**
- [x] - `sqrxz3.sh` - Sqrxz 3 - Adventure For Love - **Installs, Plays great**
- [x] - `sqrxz4.sh` - Sqrxz 4 - Cold Cash - **Installs, Plays great**
- [x] - `starcraft.sh` - Starcraft - **Installs, Plays great**
- [x] - `supaplex.sh` - Reverse engineering Supaplex - **Installs, Plays great**
- [x] - `vanillacc.sh` - Vanilla-Command and Conquer - **Installs, Plays great**
- [x] - `vcmi.sh` - Open-source engine for Heroes of Might and Magic III - **Installs, Plays great**
- [x] - `supertuxkart.sh` - a free kart-racing game - **Installs, Plays great at lower resolution**
- [x] - `temptations.sh` - Enhanced version of the MXS game - **Installs**
- [x] - `warmux.sh` - Worms Clone - **Installs**
- [x] - `wesnoth.sh` - Turn-based strategy game - **Installs**
- [x] - `wine.sh` - WINEHQ - Wine Is Not an Emulator - **Installs**
- [x] - `xash3d-fwgs.sh` - Half-Life engine source port. - **Installs**
- [x] - `xump.sh` - The Final Run - **Installs**
- [x] - `zeldansq.sh` - Zelda: Navi's Quest fangame - **Installs, Plays great, Needs correct script to remove xinit errors**

#### Supplementary

- [x] - `audacity.sh` - Audacity open-source digital audio editor - **Installs Runs fine**
- [x] - `bezelproject.sh` - Easily set up the Bezel Project **Installs Runs fine**
- [x] - `bgm123.sh` - Straighforward background music player using mpg123. **Currently limited to RPi into HDMI. Testers / collaborators welcome to help expand this functionality.**
- [x] - `chromium.sh` - Open Source Web Browser - **Installs, Work well**
- [x] - `epiphany.sh` - epiphany lightweight web browser - **Installs Runs fine**
- [x] - `filezilla.sh` - A cross platform FTP application - **Installs Runs fine**
- [x] - `firefox-esr.sh` - FireFox-ESR - Formally known as IceWeasel, the Rebranded Firefox Web Browser - **Installs Runs fine**
- [ ] - `fun-facts-splashscreens.sh` - Set up some loading splashscreens with fun facts. **Cant test dont have the right system x86**
- [x] - `golang-1.17.sh` - Golang v1.17 binary install **Installs fine**
- [x] - `gparted.sh` - partition editing application **Installs Runs fine**
- [x] - `joystick-selection.sh` - Set controllers for RetroArch players 1-4. **Installs Does what it needs too**
- [x] - `kodi-extra.sh` - Kodi Media Player 16 with controller support as a separate system - **Installs, works great**
- [x] - `kweb.sh` - Minimal kiosk web browser - **Installs Runs fine**
- [x] - `librecad.sh` - librecad open-source 2d cad - **Installs Runs fine**
- [x] - `libreoffice.sh` - Open source office suite - **Installs Runs fine**
- [x] - `mesa.sh` - Mesa3d OpenGL and Vulkan Drivers - **Installs fine**
- [x] - `mpv.sh` - Video Player - Not an actual emulator but allows you to play movies and tv shows from new systems in RetroPie. - **Installs Runs fine**
- [x] - `mixx.sh` - Mixxx DJ Mixing Software App - **Installs Runs fine**
- [x] - `mypaint.sh` - mypaint easy-to-use painting program - **Installs Runs fine**
- [x] - `omxplayer.sh` - Video Player - **Installs Runs fine**
- [x] - `putty.sh` - SSH and telnet client - **Installs Runs fine**
- [x] - `retroscraper.sh` - Scraper for EmulationStation by kiro - **Installs Runs fine**
- [x] - `screenshot.sh` - Take screenshots remotely through SSH - **Tested and works well.**
- [x] - `thunderbird.sh` - Thunderbird — Software made to make email easier - **Installs Runs fine**
- [x] - `videolan.sh` - VLC media player - **Installs Runs fine**
- [x] - `weechat.sh` - Console IRC Client - **Installs Runs fine, dont know how to quit**

### Removed broken scripts to Retopie-Extra-Scriptmodule-unstable

- [x] - `supermodel.sh` - Sega Model 3 Arcade emulator - **Installs Does play, test game are slow**
- [ ] - `lr-craft.sh` - Minecraft engine - **Installs Fails to start**
- [ ] - `lr-easyrpg.sh` - RPG Maker 2000/2003 engine - EasyRPG Player interpreter port for libretro - **Fail**
- [ ] - `lr-ecwolf.sh` - Wolfestein 3D engine - ECWolf port based of Wolf4SDL for libretro - **Installs Fails to start games**
- [ ] - `lr-pocketcdg.sh` - A MP3 karaoke music player. - **Installs, Fails to load files **
- [ ] - `lr-minivmac.sh` - Macintosh Plus Emulator - Mini vMac port for libretro - **Installs, Black screen when starting games**
- [ ] - `deadbeef.sh` - Music and ripped game music player - **Installs**
- [ ] - `corsixth.sh` - Theme Hospital engine clone - **Installs, Lua error, will not play**
- [ ] - `fofix.sh` - FoFix - Guitar Hero and Rock Band clone - **Bin file is nolonger able to download**
- [ ] - `funnyboat.sh` - Funny Boat. A side scrolling boat shooter with waves - **Installs, Plays in small window**
- [ ] - `ganbare.sh` - Japanese 2D Platformer - **Installs, Plays in small window**
- [ ] - `gamemaker.sh` - Install the 3 gamemaker games - **Failed to build**
- [ ] - `lutris.sh` - lutris - Game engine for linux - **fails, missing package now**
- [ ] - `maelstrom.sh` - Maelstrom - Classic Mac Asteroids Remake - **Failed to build**
- [ ] - `mame-tools.sh` - Additional tools for MAME/MESS **Failed**
- [ ] - `manaplus.sh` - 2D MMORPG client - **Failed to build**
- [ ] - `openxcom.sh` - Open Source X-COM Engine - **Failed to build**
- [ ] - `kaiten-patissier.sh` - Japanese 2D Platformer - **Installs Plays in small window**
- [ ] - `kaiten-patissier-ura.sh` - Japanese 2D Platformer - **Installs Plays in small window**
- [ ] - `refkeen.sh` - port for Keen Dreams, The Catacomb Adventure Series and Wolf3d - **Does not install now**
- [ ] - `shiromino.sh` - Tetris the Grand Master Clone - Requires keyboard to restart/quit. - **Installs, cant find the config file, fails to start **
- [ ] - `texmaster2009.sh` - Tetris TGM clone - **Plays in small screen**
- [ ] - `tinyfugue.sh` - MUD client - **fails to start**
- [ ] - `ulmos-adventure.sh` - Simple Adventure Game - **Installs Small screen**
- [ ] - `vorton.sh` - Highway Encounter Remake in Spanish - **Installs small screen**
- [ ] - `vgmplay.sh` - Music Player - **fails, missing package now**
- [ ] - `wizznic.sh` - Puzznic clone - **Installs Plays, screen is small**
- [ ] - `zeldapicross.sh` - Zelda themed Picross fangame - **Installs starts but will not go past first screen**

## Hall of Fame - Scripts accepted into RetroPie-Setup

- [x] - LXDE - LXDE Desktop.
- [x] - SimCoupe - Sam Coupe Emulator.
- [x] - Oricutron - Oric 1/Oric Atmos emulator.
- [x] - sdltrs - Radio Shack TRS-80 Model I/III/4/4P emulator.
- [x] - ti99sim - Texas Instruments 99A emulator.
