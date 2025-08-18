*** Settings ***
Library     String

*** Test Cases ***
Example for String Replacement and Removal Keywords
    ${Updated_String}       Remove String       Hello World!        World
    Log To Console      ${updated_string}

    ${Updated_String}       Remove String Using Regexp      abc123xyz       [a-z]+
     Log To Console      ${updated_string}

     ${Updated_String}       Replace String     Hello World!        World       Universe
     Log To Console      ${updated_string}


    ${Updated_String}       Replace String Using Regexp     abc123xyz       [a-z]+      456
    Log To Console      ${updated_string}
