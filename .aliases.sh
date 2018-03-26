alias myip='curl ip.appspot.com'

function mkd() {
mkdir -p "$@" && cd "$@"
}

function cnBootSimulator() {
xcrun simctl boot "$@"
}

function cnShoutdownSimulator() {
xcrun simctl shutdown "$@"
}


alias cnScripts='code ~/Documents/scripts/.aliases.sh'
alias cns3="cd xcode/SFG3/SFG/"
alias cns3o="open xcode/SFG3/SFG/SFG.xcworkspace"
alias cntemp="cd ~/tempProjects"
SFGBundle="com.shutterfly.mopho.prototype"

# Simulators IDS:
CNSimiPhone6102="902DE6FB-7192-4470-B2B3-4FBC432A9C4D"

# Simulator 
alias cnsfgkill="xcrun simctl terminate booted $SFGBundle"
alias cnsfgdel="xcrun simctl uninstall booted $SFGBundle"
alias cnBootiPhone6102="cnBootSimulator $CNSimiPhone6102"
alias cnShoutdowniPhone6102="cnShoutdownSimulator $CNSimiPhone6102"

# UI-Automation

function cnWebdriverTest() {
xcodebuild -project WebDriverAgent.xcodeproj -scheme WebDriverAgentRunner -destination 'platform=iOS Simulator,name=${1},OS=$2' test
}

CNFBWebAgentLocation="~/xcode/fbWebDriverAgent/WebDriverAgent"
CNFBWebAgentInspectore="http://localhost:8100/inspector"
alias cnWebdriverOpen="open -a firefox -g $CNFBWebAgentInspectore"

alias cnWebdriverTestIphone6102="cnWebdriverOpen && cd $CNFBWebAgentLocation && xcodebuild -project WebDriverAgent.xcodeproj -scheme WebDriverAgentRunner -destination 'platform=iOS Simulator,name=iPhone 6 Simulator,OS=10.2' test"
alias cnWebdriverTestIphone7Pluse112="cnWebdriverOpen && cd $CNFBWebAgentLocation && xcodebuild -project WebDriverAgent.xcodeproj -scheme WebDriverAgentRunner -destination 'platform=iOS Simulator,name=iPhone 7 Plus,OS=11.2' test"
alias cnList8100Blockers="sudo lsof -i tcp:8100"
# Git
alias cngitclean='git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'
alias cngitdiscard='git reset --hard'
alias cngitdev='git checkout develop'

