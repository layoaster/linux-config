# My Debian-based distro configuration

Title is self-explanatory so basically, there are 99.9% probabilities this repository won't be of your interest.

## OS tweaks

###### Nord Konsole ([link](https://github.com/arcticicestudio/nord-konsole))
A color scheme for Konsole.

## Software / System Utilities

### Xbindkeys

Used for mouse's extra buttons remapping.

1. Install the following:
```
sudo apt-get install xbindkeys xautomation x11-utils
```

2. Find the button number that is assgined to each button. Run `xev` to get the following output:
```
ButtonRelease event, serial 41, synthetic NO, window 0x4c00001,
root 0x2e9, subw 0x4c00002, time 25804905, (31,28), root:(821,80),
state 0x110, button 1, same_screen YES
```
In this case `1` is the button number.

3. Optionaly, you can generate a config file (`.xbindkeysrc`):
```
xbindkeys --defaults > $HOME/.xbindkeysrc
```
Or modify the existing one.

4. You can reload/test updated config with the command:
```
xbindkeys xbindkeys -p
```
5. Remeber to include cmd `xbindkeys` in a startup script.


## Developer Tools

1. [pyenv](https://github.com/pyenv/pyenv)
2. [pyenv-virtualenvwrapper](https://github.com/pyenv/pyenv-virtualenvwrapper)
3. [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
