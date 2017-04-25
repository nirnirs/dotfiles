# Use Vim as the default editor.
export PATH=$HOME/bin:$PATH
export EDITOR="vim"

# Add binaries installed via Homebrew to our PATH.
export PATH=$HOME/homebrew/bin:$PATH
export LD_LIBRARY_PATH=$HOME/homebrew/lib:$LD_LIBRARY_PATH

# reload history for each prompt (for tmux windows)
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

export AWS_CREDENTIAL_FILE=/Users/nirs/.aws/credentials
export WAZE_GIT_ROOT=/Users/nirs/workspace/
export JOBFLOW_TOOLS_DIR=${WAZE_GIT_ROOT}/java/WazeJobflowTools/
. $HOME/.aliases

eval "$(pyenv init -)"

source ~/.bash-powerline.sh

export SCALA_HOME=/Users/nirs/homebrew/opt/scala/idea
