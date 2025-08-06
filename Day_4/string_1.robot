*** Variables ***

${string1}      Learning Python is very easy !!!
${string2}      Python is easy
${empty_string}
${number}       42
${regexp_pattern}      ^Python

*** Test Cases ***
Demonstration of Built in String Operations
    ${catenated_string}     Catenate     ${string1}     ${string2}
    Log To Console          ${catenated_string}
    ${string_length}        Get Length      ${string1}
    Log To Console          ${string_length}
    Length Should Be        ${string1}      32
#    Should Not Be Empty     ${empty_string}
    Should Match Regexp     ${string2}      ${regexp_pattern}
    Should Not Match Regexp     ${string1}      ${regexp_pattern}