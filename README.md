# My Dotfiles

Reproducible Mac development environment setup using chezmoi.

## Fresh Mac Setup

Run this one command:

```bash
curl -fsSL https://raw.githubusercontent.com/andrejgou/dotfiles/main/bootstrap.sh | bash
```

You'll be prompted for:
- Full name (for Git commits)
- Email address (for Git commits)

## Optional: GitHub Authentication

Authenticate via browser:
```bash
gh auth login
```

Follow the prompts and choose "Login with browser".

## What's Included

- Homebrew packages (git, neovim, ripgrep, fzf, etc.)
- Oh My Zsh with git plugin
- Basic dotfiles (.zshrc, .gitconfig, .vimrc)
- iTerm2
