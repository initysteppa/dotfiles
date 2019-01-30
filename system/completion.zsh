if [ -x "$(command -v ruby)" ] && gem which colorls >/dev/null 2>&1; then
	source $(dirname $(gem which colorls))/tab_complete.sh
fi
