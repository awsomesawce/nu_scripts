#!/usr/bin/env nu
# Demo of using modules

# Module documentation
export module m {
    # BEGIN_MODULE_DEFINITION

    # funcone
    
    # Documentation for `funcone`
    def funcone [
        p: string # parameter one
        pp: int # parameter two
        # Above p3 
        p3: record<name: string, id: int> # parameter three
    ] {
        # BEGIN_FUNCTION_BODY
        print $"p: ($p)"
        print $"pp: ($pp)"
        print "p3: _next line_"
        echo $p3
        # * Notes are below
        ### Notes
        # - Here is a note
        # ...

        # END_FUNCTION_BODY
    }

    # Completion
    # Created from `@completion`
    # # # ! UNKNOWN OPERATION
    # def name [param: string@complete, ] {
    #     completion ...
    # } #

    # functhree
    # third function defined in module m
    def functhree [
        param: any # Documentation for param
    ] {
        return
    }
}

# Notes nu module
# Notes about nu module within a nu module
export module notes {
    export const important_points = ""
}

export module tst {
    export alias pn = pnpm
    export alias dn = deno
    export alias dr = deno run
    export alias dra = deno run --allow-all
}