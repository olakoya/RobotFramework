*** Variables ***

${string1}      Learning Python is very easy !!!
${string2}      Python is easy
${empty_string}
${number}       42
${regrexp_pattern}      ^Python

*** Test Cases ***
Demonstration of Built in String Operations
    ${catenated_string}     Catenate     ${string1}     ${string2}
    Log To Console      ${catenated_string}
