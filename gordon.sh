#!/bin/bash
# Copyright (c) 2017 - Paradoxis

function gordon()
{
    if [[ $? != 0 && -d $GORDON_INSULTS ]]; then
        if [ "$(uname)" == "Darwin" ]; then
            insult=$(ls $GORDON_INSULTS | gshuf -n1)
            afplay $GORDON_INSULTS/$insult & disown
        elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
            insult=$(ls $GORDON_INSULTS | shuf -n 1)
            mpv --really-quiet $GORDON_INSULTS/$insult & disown
        fi
    fi
}

GORDON_INSULTS=~/.gordon
PROMPT_COMMAND=gordon
