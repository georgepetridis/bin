# Loads only the files that end in '.bashrc.sh' if the 'bin' directory exists.
if [ -d $HOME/bin/ ]; then
    for file in $HOME/bin/*.bashrc.sh; do
        . "$file"
    done
fi
