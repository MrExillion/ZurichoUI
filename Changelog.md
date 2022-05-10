<h1>Relase of Alpha 4 (0.0.4) Shadowlands Capable</h1>

<h2>BELOW SECTIONS ARE SUBJECT TO CHANGE UNTIL STATUS SAYS RELEASED</h2>

# README:
ZurichoUI-Alpha

You must rename the Folder after extracting and placing in the interfacefolder to: ZurichoUI

The name of the addon folder by default has the version tag attached to it, therefor you must remove the tag.

In order to not change language on the pc all the time, one should disable the hotkey in windows, which by default is alt graphics + shift or ctrl + alt + shift.
GUIDE: https://windowsreport.com/windows-10-switches-keyboard-language/

 

# TOC breakdown:
* Interface: 90200
* Title: Zürichos Brugergrænseflade |cffB61B1BAlpha(0.0.4)
* Title-enGB: |cff003399ZurichoUI |cffB61B1BAlpha(0.0.4)
* Title-enUS: |cff003399ZurichoUI |cffB61B1BAlpha(0.0.4)
* Title-deDE: |cff003399ZürichoUI |cffB61B1BAlpha(0.0.4)
* Title-esES: |cff003399El UI Del Zuericho
* Author: Peder Züricho, zuricho.dk, Pingu#2660
* Version: 0.0.4 Alpha - Alpha-Release Candidate (still active alpha) WoW:SL capable
* Notes: Minimalistisk brugergrænseflade inspireret af Overwatch, Diablo og Mobas i et forsøg på en enklere brugergrænseflade
* Notes-enGB: Minimalistic UI inspired by Overwatch, Diablo, and mobas, for a more simple UI
* Notes-enUS: Clean UI inspired by Overwatch, Diablo, and mobas, for a more simple UI
* Notes-deDE: Minimalistische Benutzeroberfläche, inspiriert von Overwatch, Diablo und Mobas, um die Benutzeroberfläche zu vereinfachen
* Notes-esES: Interfaz de usuario minimalista inspirada en Overwatch, Diablo y Mobas en un esfuerzo por simplificar la interfaz de usuario
* SavedVariablesPerCharacter: classColorPaladin classColorDruid classColorAll StanceShow repWhileLeveling silverXPWheel noFrameXPWheel classColorXPWheel

 

* Paging functionality has been vastly supported for some time now and is considered stable.
* XP Wheel holds hidden Talent Functions which can be used in macros with success, future plans are to add a Module or standalone AddonFor saved talent builds.
* Alpha4 - Includes a menu feature that has some issues at times, and can be found in GameMenu(Esc)>Interface>Addons>ZurichoUI - Features include Gui for colour picking presets for inner xpwheel and overlayframe, and the posibility to track reputation while leveling, and stance bar show/hide. More to come.
* Alpha4 - Also includes a media Register to SharedMedia Lib, of own borders (new) and adds dispell voice sound if DBM VPEnglish Female is installed. I use this with Vuhdomyself. In the future i intend to add my own voice pack as a module.

 

# Author
27 Year old BSc. Medialogy Studying Master in Game design at Aalborg University. Playing on Frostwhisper, in guild <Paradigm> Horde

# Bug Fixes

* Updated the TOC to 90200 SL capable
* Added a nilcheck to handle unitframes better.

# New Features

* No new features this time
* .pkgmeta added to project
* rebased to Addon Studio for WoW


# Known issues
* Status Wheel issues related to new menu features, such as tracking both honor and reputation, and overlapping wheel texts
* ZPerl Taint on Player frame is incomplete
* Some Saved Variables may cause issues for ZPerl: Missing variables can cause repeting asssertions(fix planned) for ZurichoUI: Issues with coloration of OverlayFrame for the Status Wheel, may require a file wipe while out of the game at times (being investigated)
* Incompatible with Bartender4 (currently no plans to change this due to taint)

# Commands
/ZurichoPaladin
/ZurichoDruid
/ZurichoClassColor
/ZurichoStance
/ZurichoHelp

Related Projects:
ZPerl Unit Frames, DBM VPEnglish Female, LibStub, LibSharedMedia-3.0, Paging by Teomyr
