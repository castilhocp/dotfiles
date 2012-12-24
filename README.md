# My awesome dotfiles #

After some time of deep lazyness, dark times in which the forces of procrastination were strong in this young padawan, I decided to put my devel machine dotfiles in a git repo. Yay! cheered the crowd blissfully, and the world was never again the same.

## What do we have here ##

### .vimrc ###

Configurations that I normally use (without many things that got mercylessly cut from the original file before I created this repo, because I didn't remember how to use them, or what the heck they were doing in my .vimrc).

Many configs were inspired (i.e. stolen) from [this blog post](http://nvie.com/posts/how-i-boosted-my-vim/)

### .bashrc ###

Vanilla flavored bashrc, the only real mod is a tweak at PS1 to show the actual git branch (in yellow, mind you!) if inside a repo. Made this because all other mods for showing the actual branch simply destroyed my beautiful green/blue prompt.

### bundle ###

The bundle folder to manage the vim plugins I use. But beware: submodules inside.

## And how 'bout installing all this goodness? ##

It's simple, keep calm and I will lead you through the install process in an almost painless manner.

1. cd ~
1. git clone git://github.com/castilhocp/dotfiles.git
1. rm .vimrc
1. ln -s dotfiles/.vimrc .vimrc
1. ln -s dotfiles/.bashrc .bashrc
1. rm -rf .vim/bundle
1. ln -s dofiles/bundle .vim/bundle

# License #

You're free to use all the information in this repository in any way you please, provided you never mistreat a puppy from this moment on. Nevermore. Seriously.

I'm watching ya.
