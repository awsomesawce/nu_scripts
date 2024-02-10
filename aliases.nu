#!/usr/bin/env nu
## Basic nu aliases

export const nuUrl = "https://nushell.sh"
let cmdList = (open cmds.txt)

export alias g = git
alias ll = ls -l
alias la = ls -a
export alias dr = deno run
export alias dra = deno run -A
export alias ezag = eza -l --git

## Consult the almighty cht.sh
export def chtsh [q: string] {
    curl $"https://cht.sh/($q)"
}

export def openNuDocs [] {
    start $nuUrl
}