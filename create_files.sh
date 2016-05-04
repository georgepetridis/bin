#!/bin/bash
if [ -f $HOME/.bash_profile ]
	then
		while true; do
			read -p ".bash_profile already exists. Do you want to delete it and create a new one? (y/n)" yn
			case $yn in
				[Yy]* ) rm $HOME/.bash_profile; break;;
				[Nn]* ) exit;;
				* ) echo "Enter y or n.";;
			esac
		if [ -f $HOME/bin/example.bash_profile ]; then
			cp $HOME/bin/example.bash_profile $HOME/.bash_profile
		fi
		done
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
