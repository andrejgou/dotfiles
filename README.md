# My Dotfiles

Reproducible Mac development environment using chezmoi.

## Setup on a New Machine

```bash
curl -fsSL https://raw.githubusercontent.com/andrejgou/dotfiles/main/bootstrap.sh | bash
```

This installs Homebrew, chezmoi, pulls your dotfiles from GitHub, and prompts for your name and email.

## How It Works

chezmoi keeps two versions of your dotfiles:
- **Source directory** (`~/.local/share/chezmoi/`): Your editable templates and configs
- **Your home directory** (`~/`): The actual files your system uses (`.zshrc`, `.gitconfig`, etc.)

When you make changes to the source directory, you run `chezmoi apply` to copy them to your home directory.

## Complete Workflow Example

Let's say you want to add a new shell alias:

### 1. Edit the source file

```bash
chezmoi edit ~/.zshrc
```

This opens `~/.local/share/chezmoi/dot_zshrc` in your editor. Add your alias and save.

### 2. Preview the changes

```bash
chezmoi diff
```

This shows you exactly what will change in `~/.zshrc` before actually changing it.

### 3. Apply the changes

```bash
chezmoi apply -v
```

This updates `~/.zshrc` with your changes. The `-v` flag shows you what it's doing.

### 4. Test it

```bash
source ~/.zshrc
# Try your new alias
```

### 5. Commit and push

```bash
chezmoi cd                      # Go to ~/.local/share/chezmoi
git add dot_zshrc
git commit -m "Add new alias"
git push
```

Now the change is saved to GitHub and will be available on your other machines.

## Syncing to Other Machines

On another machine where you already have your dotfiles:

```bash
chezmoi update
```

This pulls the latest changes from GitHub and applies them to your home directory.

## Adding a New File

If you create a new config file (like `~/.tmux.conf`) and want chezmoi to manage it:

```bash
chezmoi add ~/.tmux.conf
```

This copies it to `~/.local/share/chezmoi/dot_tmux.conf`. Then follow the workflow above to commit it.

## Quick Reference

| What you want to do | Command |
|---------------------|---------|
| Edit a config | `chezmoi edit ~/.zshrc` |
| See what would change | `chezmoi diff` |
| Apply your edits | `chezmoi apply -v` |
| Start tracking a new file | `chezmoi add ~/.newfile` |
| Commit your changes | `chezmoi cd` then normal git commands |
| Pull updates from GitHub | `chezmoi update` |
