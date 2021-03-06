# LS Color
export CLICOLOR=1
export LSCOLORS=FxGxdxdxcxegefabagadaf

# Prompt Color
export PS1="\[\033[1;34m\]\u@\h: \[\033[1;33m\]\w\n\[\033[0m\]\$"

# MacPorts Setting
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH
export LIBRARY_PATH=/opt/local/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/local/lib:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=/opt/local/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/opt/local/include:$CPLUS_INCLUDE_PATH
export DYLD_FALLBACK_LIBRARY_PATH=/opt/local/lib
export BOOST_ROOT=/opt/local/include/boost:$BOOST_ROOT

# GIT
export GIT_EDITOR=/usr/bin/vim

# Android SDK
export PATH=$PATH:/Applications/android/tools

export GOPATH=$HOME/go:$HOME/workspace/go
export PATH=$HOME/go/bin:$HOME/workspace/go/bin:$PATH

# alias

alias macvim="mvim --remote-tab-silent"

git_branch(){
    __git_ps1 '(git:%s)'
}

# bash-completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

# git-completion
if [ -d /opt/local/share/git/contrib/completion ]; then
    source /opt/local/share/git/contrib/completion/git-completion.bash
    source /opt/local/share/git/contrib/completion/git-prompt.sh

    export PS1="\[\033[1;34m\]\u@\h: \[\033[1;33m\]\w \$(git_branch)\n\[\033[0m\]\$"
fi
