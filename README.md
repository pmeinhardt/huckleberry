# huckleberry

This is how I set up my Raspberry Pi (Raspbian)

## topical

Everything is built around topic areas. If you are adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## components

There are a few special files in the hierarchy.

- **bin/** - anything in here will be added to your `$PATH`
- **aptfile** - this is a list of apt packages to install
- **topic/*.zsh** - any files ending in `.zsh` will be loaded into your environment
- **topic/path.zsh** - any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar
- **topic/completion.zsh** - any file named `completion.zsh` is loaded last and is expected to setup autocomplete
- **topic/*.symlink** - any files ending in `*.symlink` get symlinked into your `$HOME`
- **topic/install.sh** - any files named `install.sh` are run and are expected to install additional software into `~/local`

## install

Prior to installing these files, you may want to perform the [basic setup
tasks](https://gist.github.com/pmeinhardt/893f9ca32b9baf8794cda08c27001c03) on
your new Pi like configuring network access, expanding the filesystem, changing
the default password and such.

If you do not have git installed (not installed on Raspbian by default), run:

```shell
apt-get install git
```

Then run this:

```shell
git clone https://github.com/pmeinhardt/huckleberry.git ~/.dotfiles
cd ~/.dotfiles
./script/bootstrap
```

This will symlink the appropriate files in `~.dotfiles` to your home directory. Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

## home

These directories will be created in your `$HOME` directory on bootstrap:

```
code
documents
downloads
local
movies
music
pictures
public
```

The `local` directory is used as the destination directory by the additional
`install.sh` scripts. Sources are downloaded into `~/local/src`; `~/local/bin`
and `~/local/sbin` will be added to your `$PATH`.

## more

You can also setup your Pi remotely via Ansible:
[pmeinhardt/huck-up](https://github.com/pmeinhardt/huck-up)

## thanks

Although huckleberry is tailored to a very different system (Raspbian, not OS
X) and written with a very different focus, the main ideas and structure are
clearly stolen from [Zach Holman](https://github.com/holman)'s excellent
[dotfiles](https://github.com/holman/dotfiles).
