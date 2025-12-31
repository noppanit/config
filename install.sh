#!/usr/bin/env bash

set -e

echo "🚀 Setting up dotfiles..."

# Get the directory where this script is located
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Function to create symlink
create_symlink() {
    local source="$1"
    local target="$2"

    if [ -L "$target" ]; then
        echo "✓ Symlink already exists: $target"
        return
    fi

    if [ -f "$target" ] || [ -d "$target" ]; then
        echo "⚠️  Backing up existing file: $target -> ${target}.backup"
        mv "$target" "${target}.backup"
    fi

    ln -sf "$source" "$target"
    echo "✓ Created symlink: $target -> $source"
}

# Symlink dotfiles
echo ""
echo "📝 Symlinking dotfiles..."
create_symlink "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
create_symlink "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"
create_symlink "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"

# Check for Homebrew
echo ""
echo "🍺 Checking Homebrew..."
if ! command -v brew &> /dev/null; then
    echo "⚠️  Homebrew not found. Install it from https://brew.sh"
    echo "   Then run: brew bundle --file=$DOTFILES_DIR/Brewfile"
else
    echo "✓ Homebrew is installed"

    if [ -f "$DOTFILES_DIR/Brewfile" ]; then
        echo "📦 Installing packages from Brewfile..."
        brew bundle --file="$DOTFILES_DIR/Brewfile"
    fi
fi

# Check for Oh My Zsh
echo ""
echo "🐚 Checking Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "⚠️  Oh My Zsh not found. Installing..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "✓ Oh My Zsh is installed"
fi

# Check for Vim Vundle
echo ""
echo "📝 Checking Vim Vundle..."
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    echo "⚠️  Vundle not found. Installing..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    echo "Run :PluginInstall in vim to install plugins"
else
    echo "✓ Vundle is installed"
fi

echo ""
echo "✨ Setup complete! Restart your shell or run: source ~/.zshrc"
echo ""
echo "📝 Next steps:"
echo "  1. Open vim and run :PluginInstall"
echo "  2. Restart your terminal"
echo "  3. Customize configs as needed"
