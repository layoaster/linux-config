### pyenv setup ###
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

### Snap bin path ###
emulate sh -c 'source /etc/profile.d/apps-bin-path.sh'
