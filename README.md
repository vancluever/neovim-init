# My Vim/NeoVim Config

I am getting back to basics, in other words I am working on getting my
Vim chops back. More specifically, I am using [NeoVim][1] now, the new
hotness.

Of course, one does not simply adopt a new workflow and then go to
another workstation and start a new. RY bad. DRY good.

Hence, this is a simple git repo with my `init.vim` in it, mainly 
meant for me to be able to update it between my various workstations
at work and home. If you, the viewer, happen to stumble upon it,
however, I hope it helps you.

## Using

I use [Vundle][2] to manage the plugins. And as you can tell, 
the file is a specific NeoVim `init.vim`, so if you are using it
on Vim, you will need to adjust accordingly.

 * Clone the repo to your `~/.config/nvim/` directory
 * Run `nvim` and execute `:PluginInstall`
 * Reload again for your sanity

[1]: https://neovim.io
[2]: https://github.com/VundleVim/Vundle.vim
