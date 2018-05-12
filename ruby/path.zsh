if [ -x "$(command -v ruby)" ]; then
	export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
fi
