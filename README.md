<h2 align="center">Dash Scripts</h2>

---

<h4 align="left">system/readmem</h4>

<img align="right" src="/_docs/readmem.png">

Shows the process that are using most memory.

.<br>
.<br>
.<br>
.<br>
.<br>
.<br>
.<br>
.<br>
.<br>
.<br>
.<br>
.<br>
.<br>
.<br>
.<br>
.<br>
.<br>
.<br>

---

---

<h4 align="left">colour/pick</h4>

Pick a colour from screen and<br>copy it to the clipboard system.

<img align="right" src="/_docs/pick.png">

+ Dependencies:
  - imagemagick
  - xclip : https://github.com/Jack12816/colorpicker
  - colorpicker
  - libnotify ; notify-send.sh

---

<h4>screenhot/fullscreen</h4>

Copy the fullscreen to clipboard.

<img align="right" src="/_docs/fullscreen.png">

- Dependencies:
  + imagemagick
  + libnotify ; notify-send.sh
  + uncutter (optional, just delete the lines that use it)

---

<h4>screenhot/screen</h4>

Copy the fullscreen to clipboard.

<img align="right" src="/_docs/screen.png">

- Dependencies:
  + imagemagick
  + libnotify ; notify-send.sh
  + unclutter (optional, just delete the lines that use it)

---

<img align="right" src="/_docs/doasedit.png">

<h4>root/doasedit</h4>

Edit a file  from root using **doas** and `$EDITOR` local user configuration; script made by [@AN322](https://github.com/AN3223/scripts/), thanks :)

- Dependencies:
  + doas

...

---

<h4>emojis/loademoji</h4>

Load kaomoji from a simple file.

<img align="right" src="/_docs/loademoji.png">

- Dependencies:
  + dmenu
  + xdotool
  + libnotify ; notify-send.sh
  + xclip

---

<h3>lemonbar</h3>

<img src="/_docs/topbar.png">
<img src="/_docs/botbar.png">

There are two lemonbars, one at the bottom and other at the top, both use multiple scripts that are well documented in each script, please give a look if you want to just take one without the entire lemonbar, which is normally what I do.

I do have a **.md** file explaining a little bit of how this whole script was born, but it's not complete yet.

- Dependencies:
  + dash
  + xorg
  + xdotools
  + tuxi
  + sensors
  + lm_sensors ; sensors
  + libnotify ; notify-send
  + mpd
    * mpc
  + dwm
    * dwm-msg

- Todo:
  + Redirect all colours to a single files for fast switch themingl
