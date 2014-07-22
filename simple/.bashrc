# Language: en_US.UTF8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export G_FILENAME_ENCODING=UTF-8

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='\[\e[00;30;43m\]\u\[\e[00;37m\]@\[\e[01;34m\]\h\[\e[0m\]:\[\e[00;33m\]\w\a \e[1;37m\$\e[m '
else
    PS1='\u@\h:\w\\$ '
fi
unset color_prompt force_color_prompt

# Pretty colors:
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -al'
