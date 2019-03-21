# Instructions for this folder

This folder includes different configuration files and similar that I have been gathering. The purpose is to configurate servers in a way that I can access them, and it makes me happy (color coding, terminal characteristics, etc.).

I'll try to keep it up to date when I do something new, but don't count on it too much. If I manage, all files in this folder will be referred to in the README.

## Terminal with italics

iTerm supports italics, but for that the terminal needs to accept it. For that you need to copy the file xterm-256color-italic.terminfo into your server:

```
scp xterm-256color-italic.terminfo user@server.dom:xterm-256color-italic.terminfo
```

After this, you'll have to register that terminal type:

```
tic -o ~/.terminfo /path/to/file/xterm-256color-italic.terminfo
```

Welcome to the world of italics and 256 color for vim (that's my main use case)!

## Bash configuration

I've extracted from my .bashrc file those parts that are most transferrable to servers (the ones that I constantly copy here and there) to files here that can be sourced.

Basically, add to the .bashrc of the server:

```
source ~/.daniel/bash_aliases
source ~/.daniel/bash_env
source ~/.daniel/bash_prompt
```

## Other configurations

I also keep track of a personalized .vim configuration. It lives in a separate git repo, so I'll just explain how to get it from there.

To set up vim on a remote machine, just clone the repository (on your home directory):

```
git clone https://github.com/ErCollao/vim-config .vim
```

Then you should run `vim`. It will give you a warning since it won't find the color scheme. Just go with it for a moment (if you have't opened a file you won't even see the difference).

Inside vim, run the command `:PlugUpdate` and vim-plug will download all the plugins. Quit vim (`:q`) and restart it, and you should have a vim configuration the way I like it!

_Warning_: in some dumbed down servers you can't actually execute PlugUpdate. In those cases, keep plugins to a minimum. Sorry. Next time I play with that I'll try to see which ones **do** work. For now, I suggest you leave only `neodark` (the color scheme).
