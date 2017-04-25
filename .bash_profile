if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# bash colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/nirs/Downloads/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/nirs/Downloads/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/nirs/Downloads/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/nirs/Downloads/google-cloud-sdk/completion.bash.inc'
fi
