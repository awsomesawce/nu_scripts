#!/usr/bin/env nu

module funcs {
    # > **Info** info
    export const nushellSite = "https://nushell.sh"

    export def chtsh [q: string] {
        curl $"https://cht.sh/($q)"
    }

    export def openDocsSite [] {
        start $nushellSite
    }

    export alias dr = deno run
    export alias dra = deno run -A
}