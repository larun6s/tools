eval "$(ssh-agent -s)"
# SDK
source /Users/arunlingala/.sdkman/bin/sdkman-init.sh
ssh-add --apple-use-keychain ~/.ssh/6si/id_ed25519
export PATH=/Users/arunlingala/.sdkman/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin:/usr/local/bin:$PATH
# For Maven. Using the same as IDE
export PATH=/Applications/IntelliJ\ IDEA\ CE.app/Contents/plugins/maven/lib/maven3/bin:$PATH

# Useful paths
export DAPY=$HOME/dev/dapy
export CHROME_DRIVWR=/Users/arunlingala/dev/explorations/sub-domain/chromedriver
export ZOOM_CHAT=/Users/arunlingala/Documents/Zoom

# Tool alias
alias rm='rm -i'
alias a-on='/Users/arunlingala/dev/tools/airplaneMode.sh 1'
alias a-off='/Users/arunlingala/dev/tools/airplaneMode.sh 0'
alias lag='sh /Users/arunlingala/dev/tools/dapy/lag.sh'
alias CJS='/Users/arunlingala/dev/tools/dapy/cjs.sh'
alias zoomSearch='sh /Users/arunlingala/dev/tools/zoom/search.sh'

# Productivity hacks
## Disable Chrome incognito
defaults write com.google.chrome IncognitoModeAvailability -integer 1
