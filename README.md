# This is a fork of the repositor from [Chris Titus Tech](https://github.com/ChrisTitusTech/material-awesome)

## Material and Mouse driven theme for [AwesomeWM 4.3](https://awesomewm.org/)
### Original work by PapyElGringo, official development seem to have moved to [material-shell](https://github.com/PapyElGringo/material-shell)

Note: My fork focuses on adding a few keyboard shortcuts and some visual improvements.

An almost desktop environment made with [AwesomeWM](https://awesomewm.org/) following the [Material Design guidelines](https://material.io) with a performant opiniated mouse/keyboard workflow to increase daily productivity and comfort.



| Tiled         | 
|:-------------:|
|![](https://i.imgur.com/mW4ApHZ.png)|

| Panel         | 
|:-------------:|
|![](https://i.imgur.com/b6CTlZu.png)|

| Exit Screen   | 
|:-------------:|
|![](https://i.imgur.com/rcKOLYQ.png)|



## Installation

### 1) Get all the dependencies

#### Arch

```
yay -S awesome rofi picom i3lock-fancy xclip ttf-roboto gnome-polkit materia-gtk-theme lxappearance flameshot pnmixer network-manager-applet xfce4-power-manager -y
wget -qO- https://git.io/papirus-icon-theme-install | sh
```

#### Program list

- [AwesomeWM](https://awesomewm.org/) as the window manager - universal package install: awesome
- [Hack](https://sourcefoundry.org/hack/) as the **font** - Arch: nerd-fonts-hack
- [Rofi](https://github.com/DaveDavenport/rofi) for the app launcher - universal install: rofi
- [Jonabur's fork of picom](https://github.com/jonaburg/picom) for the compositor (blur and animations)  install AUR: (`yay -S picom-jonaburg-git `)
- [i3lock](https://github.com/meskarune/i3lock-fancy) the lockscreen application universal install: i3lock-fancy
- [xclip](https://github.com/astrand/xclip) for copying screenshots to clipboard package: xclip
- [gnome-polkit] recommend using the gnome-polkit as it integrates nicely for elevating programs that need root access
- [Materia](https://github.com/nana-4/materia-theme) as GTK theme - Arch Install: materia-theme debian: materia-gtk-theme
- [Papirus Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) as icon theme Universal Install: wget -qO- https://git.io/papirus-icon-theme-install | sh
- [lxappearance](https://sourceforge.net/projects/lxde/files/LXAppearance/) to set up the gtk and icon theme
- (Laptop) [xbacklight](https://www.x.org/archive/X11R7.5/doc/man/man1/xbacklight.1.html) for adjusting brightness on laptops (disabled by default)
- [flameshot](https://flameshot.js.org/#/) my personal screenshot utility of choice, can be replaced by whichever you want, just remember to edit the apps.lua file
- [pnmixer](https://github.com/nicklan/pnmixer) Audio Tray icon that is in debian repositories and is easily installed on arch through AUR.
- [network-manager-applet](https://gitlab.gnome.org/GNOME/network-manager-applet) nm-applet is a Network Manager Tray display from GNOME.
- [xfce4-power-manager](https://docs.xfce.org/xfce/xfce4-power-manager/start) XFCE4's power manager is excellent and a great way of dealing with sleep, monitor timeout, and other power management features.

### 2) Clone the configuration

```
git clone https://github.com/Shoto31/Material-awesomeWm ~/.config/awesome
```

### 3) Set the themes

Start `lxappearance` to active the **icon** theme and **GTK** theme
Note: for cursor theme, edit `~/.icons/default/index.theme` and `~/.config/gtk3-0/settings.ini`, for the change to also show up in applications run as root, copy the 2 files over to their respective place in `/root`.

### 4) Same theme for Qt/KDE applications and GTK applications, and fix missing indicators

First install `qt5-styleplugins` (arch) and add this to the bottom of your `/etc/environment`

```zsh
XDG_CURRENT_DESKTOP=Unity
QT_QPA_PLATFORMTHEME=gtk2
```

The first variable fixes most indicators (especially electron based ones!), the second tells Qt and KDE applications to use your gtk2 theme set through lxappearance.

### 5) Read the documentation

The documentation live within the source code.

The project is split in functional directories and in each of them there is a readme where you can get additional information about the them.

* [Configuration](./configuration) is about all the **settings** available
* [Layout](./layout) hold the **disposition** of all the widgets
* [Module](./module) contain all the **features** available
* [Theme](./theme) hold all the **aesthetic** aspects
* [Widget](./widget) contain all the **widgets** available
