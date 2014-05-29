# mhelmer does dotfiles

## dotfiles

This is a fork of [holmans excellent dotfiles](http://github.com/holman/dotfiles.git).
Personalized for my needs.

These dotfiles are split into topics, where customizations for each topic goes
in to their respective folder. Here, things are split into C, git, vim etc.

I use [agnoster theme](http://gist.github.com/agnoster/3712874) from oh-my-zsh,
as well as vim-powerline, both of which require a [powerline patched
font](http://github.com/Lokaltog/powerline-fonts). Most vim scripts are 
installed as git submodules and pathogen is used as vim package manager.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read holmans post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## install

Run this:

```sh
git clone http://github.com/mhelmer/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory,
followed by an initialization and update of the git submodules for vim.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/holman/dotfiles/fork), remove what you don't
use, and build on what you do use.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## thanks

This is a fork of [holmans](http://github.com/holman) dotfiles. A lot of vimrc 
goodness comes from [sjl's dotfiles](https://bitbucket.org/sjl/dotfiles/),
which features a vimrc file of almost 2000 lines.
