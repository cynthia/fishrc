for file in aliases prompt
    source ~/.config/fish/inc/$file.fish
end

# OS-specific customizations
if [ (uname) = 'Darwin' ]
    source ~/.config/fish/inc/mac.fish
else if [ (uname) = 'Linux' ]
    source ~/.config/fish/inc/linux.fish
end

# see https://coderwall.com/p/hmousw
set -gx RBENV_ROOT $HOME/.rbenv
. (rbenv init -|psub)
