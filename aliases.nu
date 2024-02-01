#!/usr/bin/env nu
## Basic nu aliases

export const nuUrl = "https://nushell.sh"

export alias dr = deno run

## Consult the almighty cht.sh
export def chtsh [q: string] {
    curl $"https://cht.sh/($q)"
}

export def openNuDocs [] {
    start $nuUrl
}