# minicom-slave

    bash autogen.sh  
    ./configure --prefix=${HOME}/bin-minicom
    make
    make install

then use script minicom.sh to open a minicom that has an
extra pty port ${HOME}/extrapty that can be used as a tmux like
copy.
