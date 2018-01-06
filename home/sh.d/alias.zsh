alias ls='gls -hF --color=auto --group-directories-first'
alias xquartz='/opt/pkg/bin/startx -- /opt/pkg/bin/Xquartz'

conf(){
	case $1 in
	zsh)       $EDITOR ~/.zshrc && source ~/.zshrc ;;
	alias)     $EDITOR ~/.sh.d/alias.zsh && source ~/.zshrc ;;
	bspwm)     $EDITOR ~/.config/bspwm/bspwmrc ;;
	sxhkd)     $EDITOR ~/.config/sxhkd/sxhkdrc ;;
	xinit)     $EDITOR ~/.xinitrc ;;
	xdef)      $EDITOR ~/.Xdefaults && xrdb ~/.Xdefaults ;;
	tmux)      $EDITOR ~/.tmux.conf ;;
	*)         echo "whatchu doin $(whoami)?" ;;
	esac
}

up(){
    lv=${1:-1}
    while test $lv -gt 0; do
        builtin cd ..
        lv=$((lv - 1))
    done
    pwd
}

# vim:ft=sh
