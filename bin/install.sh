#!/bin/bash
EMACS_DIR=~/.emacs.d
EMACS_OLD=~/.emacs.d.old
DIR=$(cd $(dirname "$0"); pwd)
EMACS_NEW=${DIR%/bin}


echo "configuring emacs..."
if [ -d $EMACS_DIR ]; then
  if [ ! -d $EMACS_OLD ]; then
    echo "backing up old configuration in $EMACS_OLD..."
    mv $EMACS_DIR $EMACS_OLD
  else
    echo "Old configuration already backed up in $EMACS_OLD"
  fi
fi

echo "symlinking new config..."
rm -rf $EMACS_DIR
ln -s "$EMACS_NEW" "$EMACS_DIR"

echo -e "done!\n\n"
