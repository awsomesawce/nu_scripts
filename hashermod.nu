#!/usr/bin/env nu

# verify hashes
export module hasher {
    # Test integrity of a file with `hash sha256`
    export def verify_sha256 [
        filename: string # name of file to verify
        hashstr: string # sha256 hash string to verify against
    ] {
        if ($filename | describe) == string {
            return ((open $filename | hash sha256 | str upcase ) == ("6DEFE662DD9E323113E8E683F604031D1E726615FB8E102C048FF52C6E9FD1E4" | str upcase ))
        } else {
            echo "filename not a string"; return 1

        }
    }
}


export module main {
    export use hasher verify_sha256
}; use main verify_sha256 # * Should work...
# !  
#use hasher verify_sha256