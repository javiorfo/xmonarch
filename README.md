# XMonarch
*XMonarch is a personal configuration to get **XMonad** and **XMobar** in one piece on **Arch Linux**. This applies perfectly to my personal desktop computer, my personal notebook and my notebook for working with no need to have multiple file configurations for each one.*

## Caveats
- This set of tools have my own personal configurations (with `Nerd Fonts`, `Alacritty`, etc), feel free to use it and modify it as you wish.
- This project has been developed on and for Linux following open source philosophy.

## Installation
```console
$ git clone https://github.com/javi-7/xmonarch
$ cd xmonarch
$ ./xmonarch
```
- `./xmonarch` will install **Ubuntu Mono Nerd Font** (if not installed), set **00-keyboard.conf** with LATAM distribution (if you like), and install xmonad and settings (and remove older configurations).

## Configuration
- Set preferences in [Settings.hs](https://github.com/javi-7/xmonarch/blob/master/xmonad/lib/XMonad/Util/Settings.hs)
```haskell
-- __  ____  __                            _
-- \ \/ /  \/  | ___  _ __   __ _ _ __ ___| |__
--  \  /| |\/| |/ _ \| '_ \ / _` | '__/ __| '_ \
--  /  \| |  | | (_) | | | | (_| | | | (__| | | |
-- /_/\_\_|  |_|\___/|_| |_|\__,_|_|  \___|_| |_|

-- #############
-- # CHANGE ME #
-- #############

-- TERMINAL
terminal                     = "alacritty"

-- XMOBAR COLORS
xmobarBgColor                = "#303030"
xmobarFgColor                = "#FFFFFF"
xmobarWSCurrentColor         = "#FF0000"
xmobarWSHiddenColor          = "#00FFFF"
xmobarWSHiddenNoWindowsColor = "#FFFFFF"
xmobarWSTitleColor           = "#FFFFFF"
xmobarArchLogoColor          = "#1793D1"

-- XMOBAR SEPARATOR
xmobarSep                    = " <fc=#949494>|</fc> "

-- XMOBAR POSITION
xmobarPosition               = "TopH 25"

-- XMONAD WINDOWS
borderWidth                  = 2
normalBorderColor            = "#DDDDDD"
focusedBorderColor           = "#FF0000"

-- NERD FONT
fontDefault                  = "UbuntuMono Nerd Font Mono"
fontFirst                    = fontDefault
fontSecond                   = fontDefault
bold                         = False
fontSize                     = 11

-- XMOBAR COMMANDS
-- KBD
kbdVisible                   = True
kbdIcon                      = "<fn=2>\\xf11c</fn>"

-- DYN NETWORK
dynNetworkVisible            = True
dynNetworkUpIcon             = "<fn=1>\\xf0aa</fn>"
dynNetworkDownIcon           = "<fn=1>\\xf0ab</fn>"

-- DISK U
diskUVisible                 = True
diskUIcon                    = "<fn=1>\\xf7c9</fn>"

-- DATE
dateZoneVisible              = True
dateZoneLocale               = "es_AR.UTF-8"
dateZoneTimeZone             = "America/Argentina/Buenos_Aires"
dateZoneCalendarIcon         = "<fn=1>\\xf133</fn>"
dateZoneClockIcon            = "<fn=1>\\xf017</fn>"

-- WEATHER
weatherVisible               = True
weatherStationID             = "SADF"
weatherIcon                  = "<fc=#FFFF5F><fn=1>\\xe30c</fn></fc>"
weatherHumidityIcon          = "<fc=#00FFFF>\\xe373</fc>"

-- VOLUME
volumeVisible                = True
volumeOnIcon                 = "<fc=#FFFFFF><fn=1>\\xfa7d</fn></fc>"
volumeOffIcon                = "<fc=red><fn=1>\\xfa80</fn></fc>"

-- MULTI CPU
multiCpuVisible              = True
multiCpuIcon                 = "<fn=1>\\xf878</fn>"
multiCpuLowColor             = "#FFFFFF"
multiCpuNormalColor          = multiCpuLowColor
multiCpuHighColor            = "red"

-- MULTI CORE TEMP
multiCoreTempVisible         = True
multiCoreTempIcon            = "<fn=1>\\xf8c7</fn>"
multiCoreTempLowColor        = "#FFFFFF"
multiCoreTempNormalColor     = multiCoreTempLowColor
multiCoreTempHighColor       = "red"

-- MEMORY
memoryVisible                = True
memoryIcon                   = "<fn=1>\\xf85a</fn>"
memoryLowColor               = "#FFFFFF"
memoryNormalColor            = memoryLowColor
memoryHighColor              = "red"

-- BATTERY
batteryVisible               = False
batteryOnIcon                = "\\xf583"
batteryOffIcon               = "\\xf580"
batteryIdleIcon              = "\\xf578"
batteryLowColor              = "red"
batteryNormalColor           = "#FFFFFF"
batteryHighColor             = batteryNormalColor
--

-- WORKSPACES
workspaces                   = [ " <fn=1>\xe62b</fn> "
                               , " <fn=1>\xfa9e</fn> "
                               , " <fn=1>\xf1c0</fn> "
                               , " <fn=1>\xf724</fn> "
                               , " <fn=1>\xf075</fn> "
                               , " <fn=1>\xf001</fn> "
                               ]

-- EXECUTE AT START
spawns                       = [ "xset s off"
                               , "xset -dpms"
                               , "xset s noblank"
                               , "feh --bg-scale ~/.config/xmonad/images/background.jpg | xautolock -time 30 -locker 'systemctl suspend' &"
                               ]

-- XMONAD KEY BINDINGS
volumeKeyBound               = True
brightKeyBound               = False

-- ###################
-- # END OF SETTINGS #
-- ###################

```

## Overview
- [x] XMonad in Settings.hs
  - [x] Terminal
  - [x] Windows borders
  - [x] Nerd Fonts configuration
  - [x] Workspaces configuration
  - [x] Initial spawns configuration
  - [x] Volume keymap configuration
  - [x] Brightness keymap configuration
  - [ ] Keymaps configuration
  - [ ] Hooks configuration
  - [ ] Spacing configuration
- [x] XMobar in Settings.hs
  - [x] Colors
  - [x] Position
  - [x] Separator
  - [x] Nerd Fonts configuration
  - [x] KBD style and optional
  - [x] DYN NETWORK style and optional
  - [x] DISK U style and optional
  - [x] DATE configuration, style and optional
  - [x] WEATHER configuration, style and optional
  - [x] VOLUME style and optional
  - [x] MULTI CPU style and optional
  - [x] MULTI CORE TEMP style and optional
  - [x] MEMORY style and optional
  - [x] BATTERY configuration, style and optional
  - [ ] BLUETOOTH


## Screenshots
### Desktop Computer

<img src="https://github.com/javi-7/img/blob/master/xmonarch/xmonarch.png?raw=true" alt="xmonarch pc" style="width:1200px;"/>

### Notebook

<img src="https://github.com/javi-7/img/blob/master/xmonarch/xmonarch-note.png?raw=true" alt="xmonarch note" style="width:1200px;"/>

### Notebook 2

<img src="https://github.com/javi-7/img/blob/master/xmonarch/xmonarch-note2.png?raw=true" alt="xmonarch note" style="width:1200px;"/>

## Support
- [Paypal](https://www.paypal.com/donate/?hosted_button_id=DT5ZGHRJKYJ8C)
