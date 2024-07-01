# My Dotfiles

This Repo contains my dotfiles like my nvim setup, tmux configs and more.

## Requirements
Make sure you have the following installed on your systen

### Git
```
brew install git
```

### Stow
```
brew install stow
```

# Additional Configurations (DO BEFORE STOW)
## Raycast
Download and install raycast from the official website.
Then go to Raycast Settings -> Account and login to your account (with GitHub). After that enable Cloud Sync to get all synced settings, shortcuts, theme and more.

## Nerd Font
To use Wezterm properly, you need to install the BlexMono Nerd Font. You can do this with the following command: 
```
brew install --cask font-blex-mono-nerd-font
```

## Install Angular CLI

```
npm i -g @angular/cli
```

## NeoVim

```
brew install neovim
```

## Installation
Clone the repo to your $HOME-Directory,
```
git clone https://github.com/RobinRuf/dotfiles.git
cd dotfiles
```
Then use GNU Stow to create symlinks.
```
stow .
```
This will create references in the equivalent directories in your $Homne-Directory like in the dotfiles directory.

## YouTube-Video
If you need more instructions, please visit this [YouTube Video](https://www.youtube.com/watch?v=y6XCebnB9gs).

