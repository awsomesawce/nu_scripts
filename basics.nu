#!/usr/bin/env nu

# See https://www.nushell.sh/book/custom_commands.html#documenting-your-command

# A greeting command that can greet the caller
def greet [
  name: string      # The name of the person to greet
  --age (-a): int   # The age of the person
] {
  [$name $age]
}

# Another version of chtsh
export def chtshTwo [
    q: string  # Query to look up on cht.sh
] {
    curl $"https://cht.sh/($q)"
}

export alias ll = ls -l

export extern echo [text: string]