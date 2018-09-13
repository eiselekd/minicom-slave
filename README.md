# minicom-slave

    bash autogen.sh  
    ./configure --prefix=${HOME}/bin-minicom
    make
    make install

then use script minicom.sh to open a minicom that has an
extra pty port name written to ${HOME}/extrapty that can be used
as a tmux like copy. I.e.

    normal-minicom -D $(cat ${HOME}/extrapty)


