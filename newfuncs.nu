#!/usr/bin/env nu

# Convert string of text to base64 encoding
export def text_to_base64 [
    str: string # String to convert to base64
] {
    let encoded = $str | encode base64
    return $encoded
}

