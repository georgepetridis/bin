# echo "aliases ready"

# Aliases
alias sublbrc="subl ~/.bashrc"
alias nanobp="nano ~/.bash_profile"
alias sublbp="subl ~/.bash_profile"
alias reload="source $HOME/.bash_profile"

alias c="clear"
alias ll="ls -lhAF"
alias ..="cd .."
# Prompts before overwriting a file.
alias mv="mv -i"

alias www="cd ~/www"
alias path="echo $PATH"

# Compass create
alias compass_init='compass create --sass-dir "sass" --css-dir "css" --javascripts-dir "js" --images-dir "images"'

# Git
alias gs="git status"

# Drush 7
alias drush7='~/drush7/vendor/bin/drush'

# vhost configuration
alias vhosts='subl /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf && subl /private/etc/hosts'

# Initializes a new shell.
alias restart="exec bash --login -i"


alias gg='cd'
