PS1='%B%F{black}───%B%F{blue}── %f'

autoload -U colors compinit
colors
compinit

export \
	LC_ALL=en_US.UTF-8 \
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	EDITOR=vim \
        PATH=/Users/myth/.src:/Users/prxy/pkg:/usr/sbin:/usr/asbin:/usr/local/bin:/usr/bin:/usr/local/sbin:/opt/pkg/sbin:/opt/pkg/bin:$PATH

# Evaluate system PATH
if [ -x /usr/libexec/path_helper ]; then
    eval `/usr/libexec/path_helper -s`
fi

[[ -e "$HOME/.sh.d/alias.zsh" ]] && source $HOME/.sh.d/alias.zsh
# vim:ft=sh
