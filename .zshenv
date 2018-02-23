### pyenv setup ###
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

###### Virtualenvwrapper
export WORKON_HOME=$HOME/projects/venv
export PROJECT_HOME=$HOME/projects/code
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
# export PYENV_DEBUG=1
pyenv virtualenvwrapper_lazy


