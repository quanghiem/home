# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

setopt noautomenu
setopt nomenucomplete
unsetopt correct

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={a-zA-Z}'

PATH=$PATH:~/git/scripts/bin:~/bin
POWERLEVEL9K_MODE='awesome-fontconfig'

#complete -W "$(cat $HOME/.aws/credentials | grep -Eo '\[.*\]' | tr -d '[]')" _awsSwitchProfile

alias g='cd ~/git'
alias ga='git add .'
alias gapp='git add .; git commit -m "applying"'
alias gbr='git fetch -p && git branch -r | grep richard | cut -d\/ -f2-'
alias gc='git commit -m'
alias gd='git diff'
alias gm='git checkout master'
alias gp='git checkout production'
alias gs='git status'
alias lg='git lg | head'
alias nocolor='sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"'
alias p='cd ~/dick'
alias pp='cd ~/dick/modules/profiles/manifests'
alias pull='git pull --recurse-submodules=yes'
alias push='git push'
alias s='ssh ssh1'
alias sb='cd ~/git/sandbox'
alias sr='cd ~/git/sandbox/stacks/richard'
alias ssh1='ssh ssh1.invoice2go.io'
alias ssh2='ssh ssh2.invoice2go.io'
alias t='cd ~/git/terraform'
alias ta='figlet apply; time terraform apply tfplan && rm -fv tfplan'
alias tc='cd ~/git/terraform; figlet -t terraform check; check-terraform-stacks'
alias tp1='figlet terraform plan; figlet refresh=false; cd ~/git/terraform && git st; for a in int qa preprod staging prod; do figlet $a; cd ~/git/terraform/$a && pwd && terraform get >/dev/null && time terraform plan --refresh=false | grep -v "Refreshing state"; done; cd ~/git/terraform && git st'
alias tp2='figlet terraform plan; figlet refresh=true; cd ~/git/terraform && git st; for a in int qa preprod staging prod; do figlet $a; cd ~/git/terraform/$a && pwd && terraform get >/dev/null && time terraform plan --refresh=true | grep -v "Refreshing state"; done; cd ~/git/terraform && git st'
alias tp='figlet plan; time terraform plan -refresh=true --out tfplan'
alias tpf='figlet plan; time terraform plan -refresh=false --out tfplan'
alias v='vagrant'

#AWSume alias to source the AWSume script
alias awsume=". awsume"
