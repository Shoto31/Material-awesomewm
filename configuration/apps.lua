local filesystem = require('gears.filesystem')

-- Thanks to jo148 on github for making rofi dpi aware!
local with_dpi = require('beautiful').xresources.apply_dpi
local get_dpi = require('beautiful').xresources.get_dpi

return {
  -- List of apps to start by default on some actions
  default = {
    terminal = 'kitty',
    lock = 'betterlokscreen',
    quake = 'kitty',
    screenshot = 'flameshot full -p ~/Pictures',
    region_screenshot = 'flameshot gui -p ~/Pictures',
    delayed_screenshot = 'flameshot full -p ~/Pictures -d 5000',
    browser = 'firefox',
    editor = 'nvim', -- gui text editor
    social = 'discord',
    files = 'nautilus',
    music = rofi_command 
  },
  -- List of apps to start once on start-up
  run_on_start_up = {
     'picom --config ' .. filesystem.get_configuration_dir() .. '/configuration/picom.conf',
    'nm-applet --indicator', -- wifi
    'pnmixer', -- shows an audiocontrol applet in systray when installed.
    --'blueberry-tray', -- Bluetooth tray icon
    'numlockx on', -- enable numlock
    '/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)', -- credential manager
    'xfce4-power-manager', -- Power manager
     'flameshot',
     'synology-drive -minimized',
     'steam -silent',
     '/usr/bin/barrier',
     '~/.local/bin/wallpaper', -- wallpaper-reddit script
     'nitrogen --restore',
    -- Add applications that need to be killed between reloads
    -- to avoid multipled instances, inside the awspawn script
    '~/.config/awesome/configuration/awspawn' -- Spawn "dirty" apps that can linger between sessions
  }
}
