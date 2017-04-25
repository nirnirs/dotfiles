#!/usr/bin/env bash

set -e

on_exit() {
    echo "Cleaning up..."
}

main() {
    trap on_exit EXIT

    if [[ ! -d ~/.vim ]]
    then
        mkdir ~/.vim
    fi

    # install vim plugins
    if [[ -d ~/.vim/bundle ]]
    then
        rm -rf ~/.vim/bundle
    fi

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

    # setup brew
    echo | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    brew cask install java
    brew cask install osxfuse
    brew cask install iterm2
    brew cask install google-chrome
    brew cask install intellij-idea
    brew cask install whatsapp
    brew cask install telegram-desktop
    brew cask install adobe-acrobat
    brew cask install firefox

    brew install autoconf
    brew install automake
    brew install coreutils
    brew install doxygen
    brew install gettext
    brew install gradle
    brew install groovy
    brew install htop
    brew install hub
    brew install icu4c
    brew install libevent
    brew install makedepend
    brew install memcached
    brew install node
    brew install ntfs-3g
    brew install openssl
    brew install pcre
    brew install pkg-config
    brew install --build-from-source ~/bootstrap/protobuf261.rb

    brew install readline
    brew install scala
    brew install tig
    brew install tmux
    brew install wget

    # configure pynev
    brew install pyenv
    eval "$(pyenv init -)"

    pyenv install 2.7.13
    pyenv install 3.5.2

    pyenv global 2.7.13
    pip install appnope
    pip install aws
    pip install backports-abc
    pip install backports.shutil-get-terminal-size
    pip install bleach
    pip install boto
    pip install cachetools
    pip install cassandra-driver
    pip install certifi
    pip install cffi
    pip install configparser
    pip install cql
    pip install cqlsh
    pip install cryptography
    pip install cycler
    pip install decorator
    pip install entrypoints
    pip install enum34
    pip install Fabric
    pip install funcsigs
    pip install functools32
    pip install future
    pip install futures
    pip install google-api-python-client
    pip install google-auth
    pip install html5lib
    pip install httplib2
    pip install idna
    pip install ipaddress
    pip install ipykernel
    pip install ipython
    pip install ipython-genutils
    pip install ipywidgets
    pip install Jinja2
    pip install jsonschema
    pip install jupyter
    pip install jupyter-client
    pip install jupyter-console
    pip install jupyter-contrib-core
    pip install jupyter-contrib-nbextensions
    pip install jupyter-core
    pip install jupyter-highlight-selected-word
    pip install jupyter-latex-envs
    pip install jupyter-nbextensions-configurator
    pip install Keras
    pip install linecache2
    pip install MarkupSafe
    pip install matplotlib
    pip install mistune
    pip install mock
    pip install mpld3
    pip install nbconvert
    pip install nbformat
    pip install notebook
    pip install numpy
    pip install oauth2client
    pip install pandas
    pip install pandocfilters
    pip install paramiko
    pip install pathlib2
    pip install pbr
    pip install pexpect
    pip install pickleshare
    pip install prettytable
    pip install prompt-toolkit
    pip install protobuf
    pip install psutil
    pip install ptyprocess
    pip install pyasn1
    pip install pyasn1-modules
    pip install pycparser
    pip install Pygments
    pip install pyparsing
    pip install python-dateutil
    pip install pytz
    pip install PyYAML
    pip install pyzmq
    pip install qtconsole
    pip install rsa
    pip install scandir
    pip install scikit-learn
    pip install scipy
    pip install simplegeneric
    pip install simplejson
    pip install singledispatch
    pip install six
    pip install sklearn
    pip install subprocess32
    pip install tensorflow
    pip install terminado
    pip install testpath
    pip install texttable
    pip install Theano
    pip install thrift
    pip install tornado
    pip install traceback2
    pip install traitlets
    pip install unittest2
    pip install uritemplate
    pip install wcwidth
    pip install widgetsnbextension

    pyenv global 3.5.2
    pip install appdirs
    pip install appnope
    pip install autopep8
    pip install awscli
    pip install bleach
    pip install boto
    pip install botocore
    pip install cassandra-driver
    pip install colorama
    pip install cql
    pip install cqlsh
    pip install cycler
    pip install decorator
    pip install docutils
    pip install entrypoints
    pip install html5lib
    pip install ipykernel
    pip install ipyleaflet
    pip install ipython
    pip install ipython-genutils
    pip install ipywidgets
    pip install jedi
    pip install Jinja2
    pip install jmespath
    pip install jsonschema
    pip install jupyter
    pip install jupyter-client
    pip install jupyter-console
    pip install jupyter-contrib-core
    pip install jupyter-contrib-nbextensions
    pip install jupyter-core
    pip install jupyter-highlight-selected-word
    pip install jupyter-latex-envs
    pip install jupyter-nbextensions-configurator
    pip install jupyterthemes
    pip install Keras
    pip install lesscpy
    pip install linecache2
    pip install MarkupSafe
    pip install matplotlib
    pip install mistune
    pip install mpld3
    pip install nbconvert
    pip install nbformat
    pip install notebook
    pip install numpy
    pip install olefile
    pip install packaging
    pip install pandas
    pip install pandocfilters
    pip install pexpect
    pip install pickleshare
    pip install Pillow
    pip install ply
    pip install prompt-toolkit
    pip install protobuf
    pip install psutil
    pip install ptyprocess
    pip install pyasn1
    pip install pycodestyle
    pip install pycosat
    pip install Pygments
    pip install pyparsing
    pip install python-dateutil
    pip install pytz
    pip install PyYAML
    pip install pyzmq
    pip install qtconsole
    pip install requests
    pip install rsa
    pip install ruamel.yaml
    pip install s3transfer
    pip install scikit-learn
    pip install scipy
    pip install seaborn
    pip install Shapely
    pip install simplegeneric
    pip install simplejson
    pip install six
    pip install sklearn
    pip install tensorflow
    pip install terminado
    pip install testpath
    pip install texttable
    pip install Theano
    pip install thrift
    pip install tornado
    pip install tqdm
    pip install traceback2
    pip install traitlets
    pip install unittest2
    pip install wcwidth
    pip install webencodings
    pip install widgetsnbextension
    pip install yapf
    pip install youtube-dl

    ~/bin/decrypt.sh

    # install jupyter extensions
    jupyter contrib nbextension install --user
    if [[ -e ~/Library/Jupyter/nbextensions/snippets/snippets.json ]]
    then
        rm -rf ~/Library/Jupyter/nbextensions/snippets/snippets.json
    fi
    ln -s ~/bootstrap/snippets.json ~/Library/Jupyter/nbextensions/snippets/snippets.json

    # os apps
    # intellij
    # ssh keys
    # dotfiles
    # pip
    # python notebook
    # python extensions
    # mac os settings


    # test
    # 1. git clone workspace/compile
    # 2. python notebooks
    # 3. s3 access
    # 4. terminal keys
    # 5. etc...

}

main "$@"