eval "$(ssh-agent -s)"
# SDK
source /Users/arunlingala/.sdkman/bin/sdkman-init.sh
ssh-add --apple-use-keychain ~/.ssh/6si/id_ed25519
export PATH=/Users/arunlingala/.sdkman/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin:/usr/local/bin:$PATH
# For Maven. Using the same as IDE
export PATH=/Applications/IntelliJ\ IDEA\ CE.app/Contents/plugins/maven/lib/maven3/bin:$PATH

# Useful paths
export DAPY=$HOME/dev/dapy
export CHROME_DRIVER=/Users/arunlingala/dev/explorations/sub-domain/chromedriver
export ZOOM_CHAT=/Users/arunlingala/Documents/Zoom

# Tool alias
alias rm='rm -i'
alias a-on='/Users/arunlingala/dev/tools/airplaneMode.sh 1'
alias a-off='/Users/arunlingala/dev/tools/airplaneMode.sh 0'
alias lag='sh /Users/arunlingala/dev/tools/dapy/lag.sh'
alias cjs='/Users/arunlingala/dev/tools/dapy/cjs.sh'
alias zoomSearch='sh /Users/arunlingala/dev/tools/zoom/search.sh'

# Productivity hacks
## Disable Chrome incognito
defaults write com.google.chrome IncognitoModeAvailability -integer 1

setup_environment() {
  # export TERM=xterm-256color
  export PATH=$HOME/bin:$PATH
  export LIBRARY_PATH=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib/

  if [ "$(uname -p)" = "i386" ]; then
    echo "Running in i386 mode (Rosetta)"
    eval "$(/usr/local/bin/brew shellenv)"
    alias brew='/usr/local/bin/brew'
    export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
    export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
    export PKG_CONFIG_PATH="-L/usr/local/opt/openssl@1.1/lib/pkgconfig -L/usr/local/opt/mysql-client@5.7/lib/pkgconfig"
    export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/opt/openssl@1.1/lib"
    export PATH="/usr/local/bin:/usr/local/sbin:$PATH:/opt/bin:/opt/homebrew/sbin"
    export MYSQLCLIENT_CFLAGS="-I/usr/local/opt/mysql-client@5.7/include/mysql/" 
    export MYSQLCLIENT_LDFLAGS="-L/usr/local/opt/mysql-client@5.7/lib"
    export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3.7
  else
    echo "Running in ARM mode (M1)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    alias brew='/opt/homebrew/bin/brew'
    export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
    export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
    export PKG_CONFIG_PATH="-L/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"
    export LIBRARY_PATH="$LIBRARY_PATH:/opt/homebrew/opt/openssl@1.1/lib"
    export PATH="$PATH:/opt/homebrew/opt/mysql@5.7/bin"
  fi

  # Homebrew
  export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1

  # Prompt
  # PROMPT="%B%F{green}[$(arch)]%f%b%F{cyan}[%~]$ %f"
  # Prepend Arch to ZSH prompt
  PROMPT="%B%F{green}[$(arch)]$PROMPT$ %f"

  # Virtualenv home
  export WORKON_HOME=~/.virtualenvs

  export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python@3.9/bin/python3.9
  export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/Library/Python/3.9/bin/virtualenv

  export PATH=/Users/arunlingala/bin:/Users/arunlingala/Library/Python/3.9/bin/virtualenvwrapper.sh:$PATH
  source /Users/arunlingala/Library/Python/3.9/bin/virtualenvwrapper.sh
}

setup_environment