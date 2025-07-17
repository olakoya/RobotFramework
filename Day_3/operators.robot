*** Variables ***
${var1}      5
${var2}      3
${list}     [1,2,3,4,5]
${string}       Hello

*** Test Cases ***
1. Arithmetric Operators
    ${sum}      Evaluate    ${var1}+${var2}
    Log To Console    ${sum}

2. Comparison Operators
    ${result}      Evaluate    ${var1}==${var2}
    Log To Console    ${result}

3. Logical Operators
    ${result}      Evaluate    True and False
    Log To Console    ${result}

4. Membership Operators
    ${result}      Evaluate    3 in ${list}
    Log To Console    ${result}