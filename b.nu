export const nuSite = "https://nushell.sh"


export alias dr = deno run
export alias gst = git status
alias ll = ls -l
alias la = ls -a

# query cht.sh site
export def chtsh [
    q: string # string term to query
] {
    curl $"https://cht.sh/($q)"
}