if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto -i'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias vi=vim
alias cssh=tmux-cssh
alias ssh='ct ssh'
alias ll='ls -laF'
alias la='ls -A'
alias python=python3
alias cd..='cd ..'

alias pubip='dig +short myip.opendns.com @208.67.222.222'
alias ipinfo='curl http://ipinfo.io/json'

alias diff='diff -y --suppress-common-lines'
alias txt='dig txt'
alias mx='dig mx'
alias ns='dig ns'
alias rand='openssl rand -hex'

alias tunnels='~/wsl-tunnel/tunnels'

spf () {
    dig txt $@ | grep spf
}
dmarc () {
    dig txt _dmarc.$1
}
dkim () {
    dig cname selector1._domainkey.$1
    dig cname selector2._domainkey.$1
}
ping () {
    /bin/ping -OO $@
}