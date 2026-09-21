
#for my sway conf and new git repo
# Load zsh-syntax-highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load zsh-autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#some shit for fzf
source /usr/share/fzf/shell/key-bindings.zsh


# Initialize Starship Prompt
eval "$(starship init zsh)"

# start with fastfetch
fastfetch

# some aliases
alias zed="/home/ig/.local/zed.app/bin/zed"
alias rezsh="source ~/.zshrc"
alias resway="swaymsg reload"

#just u know do the thing
gowork(){
    cd /home/ig/auto-pro || return
    python main.py

}
# an shortcut for coping and pasting config files to github
gitcopy() {
    echo "starting"
    rm -r /home/ig/sec-dotfiles/myconfigs
    mkdir /home/ig/sec-dotfiles/myconfigs
    cp -r ~/.config/{fuzzel,fastfetch,sway,waybar,starship.toml,kitty,swaync} /home/ig/sec-dotfiles/myconfigs/
    echo "and"
    cp /home/ig/.zshrc /home/ig/sec-dotfiles/.zshrc
    echo "done"

}

#change wallpaper
wallpaper() {
    if [ -z "$1" ]; then
        echo "choose a wallpaper number. example: wallpaper 1"
        return 1
    fi


    sed -i "273s/wallpaper[0-9]\+\.jpg/wallpaper${1}.jpg/" ~/.config/niri/config.kdl

    echo "changed wallpaper to wallpaper${1}"
}

. "$HOME/.local/bin/env"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PATH=$PATH:$HOME/go/bin

# >>> Codex installer >>>
export PATH="/home/ig/.local/bin:$PATH"
# <<< Codex installer <<<
