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

export extern lsd [
    --all(-a)  # Show all files
    --help     # Get help
]

# Test module
export module myAliases {
    export alias dr = deno run
    export alias gst = git status
}

export module myData {
    export const myGh = "https://github.com/awsomesawce"
    
}

export module myUtils {

    # Get object from github api
    export def getGhApi [
        s?: string  # String to pass.
    ] {
        curl "https://api.github.com"
    }
}