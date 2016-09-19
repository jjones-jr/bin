#!/bin/bash

#dev script file setup..
export SKEL=$HOME/github/bin/skel.txt

touch $PWD/$1.sh && chmod +x $PWD/$1.sh
cat $SKEL >> $PWD/$1.sh
ln -s $PWD/$1.sh $HOME/bin/$1
vim +10 $PWD/$1.sh
