#!/bin/sh
set -e
for l in svorak coralmak ; do
    if [ -f $l.keylayout ] ; then
        echo "Switching $l"
        if [ -f $l.old.keylayout ]; then
            mv $l.old.keylayout $l.very-old.keylayout
        fi
        mv $l.keylayout $l.old.keylayout
        cp $l.new.keylayout $l.keylayout
    else
        echo "No $l.keylayout"
    fi
done
