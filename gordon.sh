#!/bin/bash
# Copyright (c) 2017 - Paradoxis


function gordon()
{

    if [[  $? != 0 ]]; then
        insults=(${GORDON_INSULTS}*)
        afplay "${insults[RANDOM % ${#insults[@]}]}" &
        disown
    fi
}

GORDON_INSULTS=~/.gordon/
PROMPT_COMMAND=gordon
