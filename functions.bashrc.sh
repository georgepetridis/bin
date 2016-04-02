echo "functions ready"
# mkdir, cd into it
mcd () {
    mkdir -p "$1"
    cd "$1"
}
# Creates and alias and appends it to aliases.bashrc.sh
al () {
	echo "alias ${1}='${2}'" >> $HOME/bin/aliases.bashrc.sh
}
