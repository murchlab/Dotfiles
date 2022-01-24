# Functions
############

# Reload complete functions
r() {
    source ~/.zshrc
    if [ -d ~/.zsh/comp ]; then
        local f
        f=(~/.zsh/comp/*(.))
        unfunction $f:t 2> /dev/null
        autoload -U $f:t
    fi
}