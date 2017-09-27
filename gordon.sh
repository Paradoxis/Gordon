#!/bin/bash
# Copyright (c) 2017 - Paradoxis

function gordon()
	{
    if [[  $? != 0 ]]; then
        insult=$(ls $GORDON_INSULTS | gshuf -n1)
        afplay $GORDON_INSULTS/$insult &
        disown
    fi
	}

GORDON_INSULTS=~/.gordon
PROMPT_COMMAND=gordon