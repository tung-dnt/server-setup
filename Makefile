dnf install git

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> /root/.zshrc
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /root/.zshrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Lazy GIT
dnf copr enable atim/lazygit -y
dnf install lazygit

# zsh
dnf install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo “export ZSH="$HOME/.oh-my-zsh"
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh” > ~/.zshrc
cd ~

dnf install tmux
dnf install docker-cli containerd

# Lazy Docker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

# POSTING - A powerful HTTP client that lives in your terminal.
# uv tool install --python 3.12 posting

# File explorer
brew install yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide imagemagick font-symbols-only-nerd-font

# Process manager
dnf install btop
