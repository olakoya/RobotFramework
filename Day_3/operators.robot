*** Variables ***
${var1}      5
${var2}      3
${list}     [1,2,3,4,5]
${string}       Hello

*** Test Cases ***
Arithmetric Operators
    ${sum}      Evaluate    ${var1}+${var2}
    Log To Console    ${sum}