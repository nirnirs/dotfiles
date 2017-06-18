if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# bash colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# bifs stuff
if [ -f /Users/nirs/waze_bi_local_config.sh ]; then
  source '/Users/nirs/waze_bi_local_config.sh'
  source $GIT_WORKSPACE/WazeBIInfrastructure/scripts/all.sh
fi


# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/nirs/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/nirs/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/nirs/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/nirs/google-cloud-sdk/completion.bash.inc'
fi
