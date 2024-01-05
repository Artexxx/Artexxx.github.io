---
title: "Zsh Configuration and Plugins - Part One"
subtitle: "The first in a series of posts on shell configuration / customisation"
date: 2023-11-06T10:32:43+11:00
lastmod: 2023-11-06T10:32:43+11:00
author: Artexxx
description: "My Z-Shell configuration, scripts and hacks"
keywords: ["zsh", "bash", "scripting", "linux", "macOS"]

tags: ["zsh", "bash", "scripting", "linux", "macOS"]
categories: ["zsh", "scripting", "linux", "macOS"]
series: ["Shell"]

series_weight: 1

featuredimage: "colour_vertical_icon_wbg_wide.png"
# featuredImagePreview: "colour_vertical_icon_wbg_wide.png"
images: ["colour_vertical_icon_wbg_wide.png"]

comments: true
hiddenFromHomePage: false
hiddenFromSearch: false

toc: true
math: true
lightgallery: false
readingTime: true
showFullContent: false
asciinema: false
---

As of 2023, I've been using zsh as my primary shell for 14 years.

<!--more-->

Over that time I've experimented with and accumulated a lot of configuration, scripts, hacks, plugins and themes. I've settled on a configuration that I'm mostly happy with, over this series I'm going to share my current setup.

I store all of my configuration in a git repository available here: [zsh-bootstrap](https://github.com/sammcj/zsh-bootstrap) {{< github-button button="star"     user="sammcj" repo="zsh-bootstrap" count="true" >}} {{< github-button button="fork"     user="sammcj" repo="zsh-bootstrap" count="true" >}}

## File Structure

I've organised my setup into a few different files.

### Installation

`bootstrap_shell.sh`- Used to install the shell, configuration, plugins and homebrew packages when first setting up a new macOS machine/VM.

### Configuration

- `zshrc` - The main zsh config file, it sources the following (.rc) files which are all just standard zsh files.
- `0-paths.rc` - Sets up the PATH variable.
- `1-zgen.rc` - Loads the plugin manager and plugins.
- `3-location_specifics.rc` - Sets up location specific configuration (e.g. based on network/hostname).
- `4-aliases.rc` - Sets up command aliases.
- `5-exports.rc` - Sets up environment exports.
- `6-zsh_options.rc` - Sets up zsh options/configuration flags.
- `7-history.rc` - Sets up history configuration.
- `9-functions.rc` - Sets up reusable functions.
- `10-prompt.rc` - Sets up the prompt.
- `14-source-files.rc` - Sources any files / configuration provided by tools, e.g. [fnm](https://github.com/Schniz/fnm), [asdf](https://github.com/asdf-vm/asdf), [iterm2_shell_integration](https://iterm2.com/documentation-shell-integration.html) etc.

The only exception to this is files with private (`.*(.|-)private(.|-).*`) in the name, which are ignored by git, they don't contain anything sensitive such as secrets, but I don't want to share them.

### Brew packages

- `Brewfile-<hostname.fqdn>` - Brewfile for the current machine, this is used by the bootstrap script to install homebrew packages, and by the alias `brewbackup` to backup the current packages.

### Dotfiles

And a number of dotfiles that are symlinked into place:

- `.vimrc` - Vim configuration.
- `.gitconfig` - Git configuration.
- `.gitconfig-no_push` - Git configuration only sourced on repositories where I wish to prevent pushing to a specific branch.
- `.gitignoreglobal` - Global gitignore file.
- `.dircolors` - Configuration for `ls` colours.
- `tmux.conf` - Tmux configuration.

More on these files later!

## Plugin Management

I use [zgen](https://github.com/tarjoilija/zgen), its lightweight, simple and fast.

You define a list of plugins you want to use, save that list as part of your zsh config, zgen will download and load them for you.

```shell
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen" --depth=1
```

### Plugins

- [RobSis/zsh-completion-generator](https://github.com/RobSis/zsh-completion-generator) - Plugin that generates completion functions automatically from getopt-style help texts.
- [zdharma-continuum/fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting) - Feature rich syntax highlighting for Zsh.
  - ![](https://raw.githubusercontent.com/zdharma-continuum/fast-syntax-highlighting/master/images/highlight-much.png)
- [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) - Fish-like autosuggestions for zsh.
- [lukechilds/zsh-better-npm-completion](https://github.com/lukechilds/zsh-better-npm-completion) - Better npm completion for ZSH.
  - Adds npm install recommendations from npm cache, uninstall recommendations from dependencies/devDependencies, detailed information on script contents for npm run
- [MichaelAquilina/zsh-you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use) - ZSH plugin that reminds you to use existing aliases for commands you just typed.
  - ![](https://raw.githubusercontent.com/MichaelAquilina/zsh-you-should-use/master/img/global.png)
- [3v1n0/zsh-bash-completions-fallback](https://github.com/3v1n0/zsh-bash-completions-fallback) - Fallback to bash completions if zsh completions are not available.
- [olivierverdier/zsh-git-prompt](https://github.com/olivierverdier/zsh-git-prompt) - A very fast git prompt for zsh.
- [paulirish/git-open](https://github.com/paulirish/git-open) - Type `git open` to open the GitHub page or website for a repository in your browser.
- [peterhurford/git-it-on.zsh](https://github.com/peterhurford/git-it-on.zsh) - A git alias for the lazy, similar to git-open - I'm currently weighing up between the two.
- [sunlei/zsh-ssh](https://github.com/sunlei/zsh-ssh) - Better host completion for ssh in Zsh.
- [torifat/npms](https://github.com/torifat/npms) - Run npm scripts interactively using fzf.
- [nnao45/zsh-kubectl-completion](https://github.com/nnao45/zsh-kubectl-completion) - kubectl completion for zsh.
- [trejo08/kubecolor-zsh](https://github.com/trejo08/kubecolor-zsh) - kubectl output colorizer.
- [zsh-users/zsh-completions](https://github.com/zsh-users/zsh-completions) - Additional completion definitions for Zsh.

#### oh-my-zsh plugins

zgen also supports loading individual oh-my-zsh plugins (which is far faster than loading all of oh-my-zsh).

- [macos](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos) - macOS specific aliases and functions.
- [docker](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker) - Docker aliases and functions.
- [docker-compose](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose) - Docker compose aliases and functions.
- [aws](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/aws) - AWS aliases and functions.
- [colored-man-pages](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colored-man-pages) - Coloured man pages.
- [command-not-found](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found) - Suggests installing missing commands.
- [fnm](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fnm) - Fnm aliases and functions.
- [fzf](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fzf) - Fzf aliases and functions.
- [nmap](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nmap) - Nmap aliases and functions.
- [gh](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/gh) - GitHub CLI aliases and functions.

## TODO
$$
    \varphi = 1+\frac{1} {1+\frac{1} {1+\frac{1} {1+\cdots} } }
$$

{{< math >}}$\|\boldsymbol{x}\|_{0}=\sqrt[0]{\sum_{i} x_{i}^{0}}${{< /math >}}
Or
{{< math >}}
$$\|\boldsymbol{x}\|_{0}=\sqrt[0]{\sum_{i} x_{i}^{0}}$$
{{< /math >}}

## Putting it all together

The following script is sourced on shell initialisation, it loads zgen, and then loads all the plugins.

```zsh
# load zgen
source "${HOME}/.zgen/zgen.zsh"

export ZGEN_RESET_ON_CHANGE="${HOME}/.zshrc"

if ! zgen saved; then
  echo "Creating a zgen save"

  # load omz plugins
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/macos
  zgen oh-my-zsh plugins/docker
  zgen oh-my-zsh plugins/docker-compose
  zgen oh-my-zsh plugins/gitfast
  zgen oh-my-zsh plugins/aws
  zgen oh-my-zsh plugins/colored-man-pages
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/fnm
  zgen oh-my-zsh plugins/fzf
  zgen oh-my-zsh plugins/nmap
  zgen oh-my-zsh plugins/gh

  # load normal plugins
  zgen loadall <<EOPLUGINS
    RobSis/zsh-completion-generator
    zdharma-continuum/fast-syntax-highlighting
    ascii-soup/zsh-url-highlighter
    zsh-users/zsh-autosuggestions
    lukechilds/zsh-better-npm-completion
    MichaelAquilina/zsh-you-should-use
    3v1n0/zsh-bash-completions-fallback
    nnao45/zsh-kubectl-completion
    trejo08/kubecolor-zsh

    # git related
    paulirish/git-open
    olivierverdier/zsh-git-prompt
    peterhurford/git-it-on.zsh
    robertzk/send.zsh

    # fzf wrappers
    sunlei/zsh-ssh
    torifat/npms
EOPLUGINS

  # source completions
  zgen load zsh-users/zsh-completions src
  zgen save
fi
```

Coming up soon in this series:

- Functions
- Themes / Colour Schemes
- Scripts
- Aliases
- Dotfiles
