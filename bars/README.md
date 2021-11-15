

Polybar? Yabar? Nah, that's pure BLOAT. I'll help you to figure out how to make a professional lemonbar for you to start adding your own modules/blocks or whatever s\*\*\* you call it!

Features of our very simple, yet, professional lemonbar:

- Shell script only
- Update module/block individually from command
- Individual interval for module/block
- Emojis
- Clickable module
- Hover over and hover out modules to click

I wrote this because I spent weeks trying my best to make lemonbar complete functional with what I wanted, there was never a full lemonbar documentation for something like this or even smple tutorial, very sad, I know, so I hope this help whoever is writing for this pure hell bar.

---

#### Lectures to read before continue!

You **need** to read those to understand what you are going to do right now, so please, go on read each one!

- https://manpages.debian.org/buster/lemonbar/lemonbar.1.en.html
- https://github.com/LemonBoy/bar/issues/225
- https://github.com/PH111P/bar (fork we will use)

#### Pre-Instalation & Instalation

So, to start off, we need a lemonbar, but depending on who you are, you probably don't want pixelized text in your bar, instead, you want something like emojis and aliased text. So if you have already lemonbar installed in your system, look 

- https://github.com/PH111P/bar (fork we will use)
- https://github.com/expectocode/bar.git (version with xft)
- https://github.com/drscream/lemonbar-xft (version with xft that many people use)

As you may know, Lemonbar does support emojis (UTF-8), so you can put whatever text you want in there and have something like this:

![image](https://user-images.githubusercontent.com/51831435/110286333-82847080-7fc3-11eb-8652-2111cacd608a.png)

But for that, you'll need the fonts that support such things, I'd recommend using JoyPixels if you like the type of emojis that Google have, or NerdFonts if you want to colorize your emoji as well:

- https://www.nerdfonts.com/ or
- https://www.joypixels.com/

And a font that you like on your system :)

#### Post-installation

Let's test it quickly with the following command:
```
echo "love me :)" | lemonbar -p
```

If everything worked out, you will see `love me :)`in the top of your desktop.


Do you see that `-p` there? It will keep the bar alive after it received the **"love me :)"**, we are going to use it from now on.

Let's make more a few tests, but before it, let's see our fonts, if you installed everything, then you probably did run `fc-cache -fv` to load the cache of your fonts, now let's get the name of your fonts.
```
fc-lists
```
To grep the name of your font, use:
```
fc-list | grep A_WORD_OF_YOUR_FONT
```

---

More to come...

---

## My build

My current build uses shell script to echo to a FIFO, which is being read by the lemon bars.

It uses `xgetres` to load the resources.

It uses this variable to go to the root folder of this repository.
```zsh
export SCRIPTS_FOLDER=$HOME/git/scripts/
```

.XResources

```xdefaults
bars.font.normal             : Noto Sans CJK JP Medium:antialias=true:size=10
bars.font.bold               : Noto Sans CJK JP Black:style=Black,Regular:antialias=true:size=10
bars.font.emoji              : NotoEmoji Nerd Font:antialias=true:size=10.3
bars.font.material           : Material\\-Design\\-Iconic\\-Font:style=Design-Iconic-Font
bars.top.geometry            : 1400x19+20+10
bars.bottom.geometry         : 1400x19+20+10
bars.name0                   : Fox tail
bars.name1                   : Simple Anything
bars.name2                   : Simple Terminal
bars.name3                   : Simple Neovim
bars.name4                   : Simple ZShell
bars.name5                   : Binoculus
bars.name6                   : Popcorn
bars.name7                   : Breakdance
bars.name8                   : Friends
bars.name9                   : Everything
bars.songs.icon.paused       : " [  •́ ◇ •̀  ] "
bars.songs.extra.limit       : 35
bars.songs.title.limit       : 20
bars.songs.notification.time : 550
bars.tags.selected           : 
bars.tags.selected.occupied  : 
bars.tags.unselect           : 
bars.tags.unselect.occupied  : 
bars.separator1              : 
bars.separator2              : 
bars.separator3              : 
bars.separator4              : 

bars.bottom.nickname                 : iris %{T3}%{F#7EABF8}%{T2}%{F#FFFFFF} arcoiris
bars.bottom.recording.fg             : #FFFfff
bars.bottom.tags.bg                  : #0A0C11
bars.bottom.tags.selected.fg         : #ffffff
bars.bottom.tags.selected.occupied   : #ffffff
bars.bottom.tags.unselected.fg       : #696969
bars.bottom.tags.unselected.occupied : #82CDD2
bars.bottom.tags.unselected.all      : #444444
bars.bottom.layout.fg                : #0A0C11
bars.bottom.layout.bg                : #ffffff
bars.bottom.titles.title             : #ffffff
bars.bottom.titles.icon              : #698B2F
bars.bottom.memory.colour            : #ffffff
bars.bottom.memory.bar               : #666666

bars.top.sound.icon.on     : #ffffff
bars.top.sound.icon.off    : #525659
bars.top.sound.bar.on      : #ffffff
bars.top.sound.bar.off     : #000000
bars.top.clock.fg          : #123456
bars.top.clock.bg          : #ecf3fa
bars.top.clock.fbg         : #ffffff
bars.top.clock.ffg         : #bdcdd7
bars.top.sensors.affix.fg  : #FFFFFF
bars.top.sensors.affix.bg  : #2B2B2B
bars.top.sensors.low.fg    : #0D2331
bars.top.sensors.low.bg    : #87C7E4
bars.top.sensors.normal.fg : #0D2331
bars.top.sensors.normal.bg : #BDCDD7
bars.top.sensors.medium.fg : #340010
bars.top.sensors.medium.bg : #FAFBC2
bars.top.sensors.high.fg   : #0D2331
bars.top.sensors.high.bg   : #FF4464
bars.top.songs.before      : #2b2b2b
bars.top.songs.icon        : #000000
bars.top.songs.song        : #000000
bars.top.songs.song.first  : #FE4656
bars.top.songs.song.second : #E4F2FF
bars.top.songs.icon.name   : #FFFFFF
bars.top.songs.neighbours  : #666666
bars.top.power.fg          : #fafafa
bars.top.power.bg          : #c92430
```
