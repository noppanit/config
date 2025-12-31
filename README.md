# macOS Dotfiles

Personal configuration files for setting up macOS development environment across multiple devices.

## Features

- **Shell Configuration**: Modern zsh setup with Oh My Zsh
- **Vim Configuration**: Vundle-based plugin management with sensible defaults
- **Tmux Configuration**: Vim-aware navigation and mouse support
- **Git Configuration**: Useful aliases and color settings
- **Package Management**: Brewfile for automated package installation

## Quick Start

### Fresh Installation

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/config.git ~/Projects/config
cd ~/Projects/config

# Run the installation script
./install.sh
```

### What the installer does

1. Creates symlinks for all dotfiles from this repo to `~/`
2. Backs up any existing dotfiles to `*.backup`
3. Installs Oh My Zsh (if not present)
4. Installs Vundle for Vim (if not present)
5. Installs Homebrew packages from Brewfile (if Homebrew is available)

## Manual Installation

If you prefer manual control:

```bash
# Symlink individual files
ln -sf ~/Projects/config/.zshrc ~/.zshrc
ln -sf ~/Projects/config/.vimrc ~/.vimrc
ln -sf ~/Projects/config/.tmux.conf ~/.tmux.conf
ln -sf ~/Projects/config/.gitconfig ~/.gitconfig

# Install Homebrew packages
brew bundle --file=~/Projects/config/Brewfile

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

## Prerequisites

- macOS (tested on Apple Silicon)
- [Homebrew](https://brew.sh) (recommended)
- Git

## Configuration Files

- [.zshrc](.zshrc) - Zsh configuration with Oh My Zsh, plugins, and aliases
- [.vimrc](.vimrc) - Vim configuration with Vundle plugins
- [.tmux.conf](.tmux.conf) - Tmux configuration with vim navigation
- [.gitconfig](.gitconfig) - Git aliases and settings
- [Brewfile](Brewfile) - Homebrew packages and applications
- [install.sh](install.sh) - Automated installation script

## Post-Installation

### Vim Plugins

After installation, open Vim and install plugins:

```bash
vim +PluginInstall +qall
```

### Git Configuration

Update your git user information:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Customize

All configuration files are now symlinked, so you can:

1. Edit files in `~/Projects/config/`
2. Changes take effect immediately (or after sourcing)
3. Commit and push changes to sync across devices

## Syncing Across Devices

### On a new machine:

```bash
git clone https://github.com/YOUR_USERNAME/config.git ~/Projects/config
cd ~/Projects/config
./install.sh
```

## Troubleshooting

### Zsh not finding oh-my-zsh

```bash
# Reinstall Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Vim plugins not working

```bash
# Reinstall Vundle and plugins
rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

### Homebrew packages not installing

```bash
# Update Homebrew and try again
brew update
brew bundle --file=~/Projects/config/Brewfile
```

## Customization

### Adding new packages

Edit the [Brewfile](Brewfile) and add packages:

```ruby
brew "package-name"
```

### Adding Vim plugins

Edit [.vimrc](.vimrc) and add plugins:

```vim
Plugin 'author/plugin-name'
```

Then run `:PluginInstall` in Vim.

### Adding shell aliases

Edit [.zshrc](.zshrc):

```bash
alias myalias='command'
```

## Author

Toy
