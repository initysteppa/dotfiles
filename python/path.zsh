export PYTHONPATH="$HOME/.local/lib64/python2.7/site-packages/:$PYTHONPATH"


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
