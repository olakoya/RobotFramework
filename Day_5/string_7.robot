*** Settings ***
Library     String

*** Test Cases ***
Examples for String Splitting and Stripping Keywords
        ${ split_string}        Split String        Hello,World!!!     ,
        Log To Console      ${split_string}

        ${ split_right}        Split String From Right     Hello,World,Again!!!     ,
        Log To Console      ${split_right}

        ${split_chars}      Split String To Characters      HELLO
        Log To Console      ${split_chars}

        ${split_lines}      Split To Lines      Hello\nWorld
        Log To Console      ${split_lines}

        ${stripped_string}     Strip String        Hello World
        Log To Console      ${stripped_string}