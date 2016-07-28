[ -f ~/.zsh_work ] && source ~/.zsh_work

source ~/.zgen.zsh

if ! zgen-saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # Devservers should have different prompt than my workstations.
    # My workstations are always Arch
    if [[ $(uname -r | grep -o '....$') == "ARCH" ]]; then
        zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train
    else
        zgen oh-my-zsh themes/steeef
    fi

    # Custom plugin
    zgen load coxley/zsh-files

    # Shell Syntax Highlighting
    zgen load zsh-users/zsh-syntax-highlighting

    # oh-my-zsh Plugins
    zgen oh-my-zsh plugins/catimg
    zgen oh-my-zsh plugins/common-aliases
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/mercurial
    zgen oh-my-zsh plugins/jsontools
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/python
    zgen oh-my-zsh plugins/sprunge
    zgen oh-my-zsh plugins/ssh-agent
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/systemd
    zgen oh-my-zsh plugins/tmux
    zgen oh-my-zsh plugins/torrent
    zgen oh-my-zsh plugins/virtualenv
    zgen oh-my-zsh plugins/wd

    # Save zgen profile
    zgen save
fi

[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases
[ -z $DISPLAY ] || BROWSER=google-chrome-stable
