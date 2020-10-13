# Rice


# Installation

```sh
git clone --bare https://github.com/sleepyeye/rice.git $HOME/.rice
alias rice='git --git-dir=$HOME/.rice --work-tree=$HOME'
rice checkout
rice config status.showUntrackedFiles no
```

reference, https://www.atlassian.com/git/tutorials/dotfiles
