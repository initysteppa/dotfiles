# From oh-my-zsh 
# github.com/robbyrussell/oh-my-zsh
#
ZSH_THEME="agnoster"

# Load the theme
if [ "$ZSH_THEME" = "random" ]
then
  themes=($ZSH/zsh/themes/*zsh-theme)
  N=${#themes[@]}
  ((N=(RANDOM%N)+1))
  RANDOM_THEME=${themes[$N]}
  source "$RANDOM_THEME"
  echo "[oh-my-zsh] Random theme '$RANDOM_THEME' loaded..."
else
  if [ ! "$ZSH_THEME" = ""  ]
  then
    source "$ZSH/zsh/themes/$ZSH_THEME.zsh-theme"
  fi
fi
