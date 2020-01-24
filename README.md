# My Debian-based distro configuration

The configuration I usually replicate in my linux distributions. Mostly useful
for programmers.


## Terminal utilities/customization

#### Nord Konsole ([link](https://github.com/arcticicestudio/nord-konsole))
A color scheme for Konsole.

#### Oh My Zsh ([link](https://github.com/robbyrussell/oh-my-zsh))

* **Powerlevel9k** ([link](https://github.com/bhilburn/powerlevel9k)): A theme
for the `Oh My Zsh` framework.

#### fzf ([link](https://github.com/junegunn/fzf))
A general-purpose command-line fuzzy finder.

## Software

#### Xbindkeys

Used for mouse's extra buttons remapping.

1. Install the following:
```shell
sudo apt-get install xbindkeys xautomation x11-utils
```

2. Find the button number that is assgined to each button. Run `xev` to get the
following output:
```
ButtonRelease event, serial 41, synthetic NO, window 0x4c00001,
root 0x2e9, subw 0x4c00002, time 25804905, (31,28), root:(821,80),
state 0x110, button 1, same_screen YES
```
In this case `1` is the button number.

3. Optionaly, you can generate a config file (`.xbindkeysrc`):
```shell
xbindkeys --defaults > $HOME/.xbindkeysrc
```
Or modify the existing one.

4. You can reload/test updated config with the command:
```shell
xbindkeys xbindkeys -p
```
5. Remeber to include cmd `xbindkeys` in a startup script.

#### Sublime Text 3

Install [`Package Control`](https://packagecontrol.io/installation).

#### Syncthing

Installation:
```shell
# Add the release PGP keys:
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

# Add the "stable" channel to your APT sources:
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Update and install syncthing:
sudo apt-get update
sudo apt-get install syncthing
```

## Resources

#### Nerd Fonts

After copying fonts the cache must be refreshed:
```shell
fc-cache -vf ~/.local/share/fonts/NerdFonts
```

#### Papirus icons pack

Installation:
```shell
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme
```
## Developer Tools

* [pyenv](https://github.com/pyenv/pyenv)
* [pyenv-virtualenvwrapper](https://github.com/pyenv/pyenv-virtualenvwrapper)
* [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
* [kubectx](https://github.com/ahmetb/kubectx)
