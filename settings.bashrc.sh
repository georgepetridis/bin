# echo "settings ready"

# Parses the current GIT branch.
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Displays a better looking command line prompt.
# The "\033[" begins the escape sequence. The m ends it.
# \033[32m --> The 32 is Green; 33 is Yellow; 00 is White;
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]: "
export CLICOLOR=1
export LSCOLORS=gxfxbxdxcxegedabagacad

# Disables special creation/extraction of ._* files by tar, etc... on Mac OS X.
COPYFILE_DISABLE=1; export COPYFILE_DISABLE

# RUBY - Installed with Homebrew
# Adds rbenv init to your shell to enable shims and autocompletion
# eval "$(rbenv init -)"
