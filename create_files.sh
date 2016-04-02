#!/bin/bash
if [ -f $HOME/.bash_profile ]
	then
		echo ".bash_profile already exists. Cannot create another one."
	else
		if [ -f $HOME/bin/example.bash_profile ]; then
			cp $HOME/bin/example.bash_profile $HOME/.bash_profile
		fi
fi
if [ -f $HOME/.bashrc ]
	then
		echo ".bashrc already exists. Cannot create another one."
	else
		if [ -f $HOME/bin/example.bashrc ]; then
			cp $HOME/bin/example.bashrc $HOME/.bashrc
		fi
fi
