# Avoids duplicate path declarations when reloading (source) this file.
# If path_helper 'exists and is executable' (-x), PATH gets set to an empty
# string. Then it rebuilds and exports PATH overriding the initial function
# found in /etc/profile. The actual strings that make up PATH (constructed by
# path_helper) are defined in /etc/paths and in the files of /etc/paths.d
if [ -x /usr/libexec/path_helper ]; then
	PATH=""
	eval `/usr/libexec/path_helper -s`
fi

# Custom paths
COMPOSER="$HOME/.composer/vendor/bin"
PHP_VERSION="php5.6.10"
MAMP_PHP="/Applications/MAMP/bin/php/${PHP_VERSION}/bin"
MAMP_BIN="/Applications/MAMP/Library/bin"

# The search for a path to a file starts from the beginning of PATH and stops
# when the file is found.
#
# --------- Custom PATH Definition. Uncomment only one. -----------------------
# -----------------------------------------------------------------------------

# PATH="/Applications/MAMP/bin/php/${PHP_VERSION}/bin:${PATH}:/Applications/MAMP/Library/bin:$HOME/.composer/vendor/bin"
PATH="${MAMP_PHP}:${PATH}:${MAMP_BIN}:${COMPOSER}"
# PATH="${PATH}:${COMPOSER}"

# -----------------------------------------------------------------------------

# Exports the PATH. For the PATH to take effect, reload .bash_profile or exit
# and restart the CLI. Can use alias 'reload' or 'restart'.
export PATH

# Loads .bashrc if its 'a regular fle that exists' (-f).
if [ -f $HOME/.bashrc ]; then
	. $HOME/.bashrc
fi
