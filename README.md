# Configs

Dotfiles are stored in a bare git repo at ~/.cfg and managed using an aliased version of 
git called `config`

See [here](https://www.atlassian.com/git/tutorials/dotfiles) for the complete rundown
of the method used

## Vim modules

Install manually from `bundles.txt`

To regenerate current bundles.txt do

```bash
$ cd ~/.vim
$ ls bundle >> bundles.txt
```

## Tmux plugins

Install plugins manually in from `plugins.txt`

To regenerate current tmux `plugins.txt` do:

```bash
$ cd ~/.tmux
$ ls plugins >> plugins.txt
```
