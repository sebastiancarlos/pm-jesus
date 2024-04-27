<!-- Note: This README.md file was automatically generated. Plase run `make readme` to generate a new one. -->

# PM-JESUS (A blessed front-end for every package manager\*)
<p align="center">
  <img width="217" alt="Screenshot 2024-04-27 at 17 09 31" src="https://github.com/sebastiancarlos/pm-jesus/assets/88276600/28fcfb0b-e200-43a8-b72c-58784b8c5b41">
</p>

> Your own, package manager, Jesus. 🎶
> 
> Someone to install your files,
> 
> Someone who compiles.
>
> Your own, package manager, Jesus.

> Cross-platform and you're all alone,
>
> Flesh and bone by the command-o
>
> TTY receiver,
>
> I'll make you a believer.

\*currently Pacman and Homebrew (but my ~~DMs~~ PRs are open!)

## Introduction
> Jesus told his disciples: “There was a rich man whose **manager** was accused
> of wasting his possessions."
- Luke 16:1

Be like that man, and don't let your multiple package manager take all your
time! Build your own cross-platform scripts, or use these!

**Disclaimer:** These scripts are for my personal use, written in a way that makes sense to me. I only open-sourced them as a joke and as an example of how reinventing your own wheel is not that hard sometimes, and comes with the benefit of doing just what you need it to do. For a more complete solution, check [sysget](https://github.com/emilengler/sysget).

## Installation

Grab your favorite shell and get going:

1. `git clone https://github.com/sebastiancarlos/pm-jesus`
2. `cd pm-jesus`
3. `./pm-install vim` (as you should)

Optionally add to your `PATH`. (This can be done by running `make install`)

## Commandments

Every command comes with its own help message. Just type `--help` after the
command to get a detailed explanation of its usage.

The commands are:

### `pm-search`

```bash
Usage: pm-search [package]
Search for a package in the list of available packages.
```

### `pm-dependencies`

```bash
Usage: pm-dependencies [package]
List all dependencies of a package.
```

### `pm-list-orphans`

```bash
Usage: pm-list-orphans
List all packages that were installed as a dependency but are no longer required.
```

### `pm-list`

```bash
Usage: pm-list
List all installed packages.
```

### `pm-uninstall-package-and-dependencies`

```bash
Usage: pm-uninstall-package-and-dependencies [package]
Uninstall a package and all its dependencies.
```

### `pm-search-local`

```bash
Usage: pm-search-local [package]
Search for a package in the list of installed packages.
```

### `pm-list-explicit`

```bash
Usage: pm-list-explicit
List all explicitly installed packages.
```

### `pm-uninstall-orphans`

```bash
Usage: pm-uninstall-orphans
Uninstall all packages that were installed as a dependency but are no longer required.
```

### `pm-info`

```bash
Usage: pm-info [package]
Get information about a package.
```

### `pm-clean-cache`

```bash
Usage: pm-clean-cache
Clean the package cache.
```

### `pm-who-owns`

```bash
Usage: pm-who-owns [file]
Return the installed package that owns a file.
```

### `pm-install-local`

```bash
Usage: pm-install-local
Build and install a package not from the system's list of available packages.
Must run in directory containing a PKGBUILD file. Usually from the AUR.
```

### `pm-system-update`

```bash
Usage: pm-system-update
Full system update
```

### `pm-who-installs`

```bash
Usage: pm-who-installs [file]
Return the remote package that installs a file.
```

### `pm-uninstall`

```bash
Usage: pm-uninstall [package]
Uninstall a package.
```

### `pm-install`

```bash
Usage: pm-install [package]...
Install a package from the system's list of available packages.
```

### `pm-files`

```bash
Usage: pm-files [package]
List all files installed by a package.
```

## Known Limitations

Currently, only Pacman and Homebrew are supported. One because I have to work,
the other because I'm based. Guess which is which.
