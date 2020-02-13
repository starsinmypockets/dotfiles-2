# Configs

Dotfiles are stored in a bare git repo at ~/.cfg and managed using an aliased version of 
git called `config`

## Updating

Use git, aliased as `config`

```bash
$ config add .yourdotfile
$ config commit
$ config push origin master
```

## Installation

For instructions on how to install dotfiles on your system, see [here](https://www.atlassian.com/git/tutorials/dotfiles)

## Contents

### Vim modules

Install manually from `bundles.txt`

To regenerate current bundles.txt do

```bash
$ cd ~/.vim
$ ls bundle >> bundles.txt
```

### Tmux plugins

Install plugins manually in from `plugins.txt`

To regenerate current tmux `plugins.txt` do:

```bash
$ cd ~/.tmux
$ ls plugins >> plugins.txt
```

### fzf

Install fzf
```bash
$ git clone https://github.com/junegunn/fzf.git .fzf
```

### zsh

Install zsh.

Also, install oh-my-zsh:
```bash
$ git clone https://github.com/robbyrussell/oh-my-zsh.git
```
