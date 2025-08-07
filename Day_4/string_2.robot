*** Settings ***
Library     String

*** Variables ***
${string1}      Learning Python is very easy !!!

*** Test Cases ***
Demonstrate String Conversion
    ${lower}    Convert To Lower Case       ${string1}
    Log To Console      ${lower}

    ${upper}    Convert To Upper Case       ${string1}
    Log To Console      ${upper}

    ${title}    Convert To Title Case       ${string1}
    Log To Console      ${title}

    ${encoded}  Encode String To Bytes      ${string1}      ASCII
    Log To Console      ${encoded}

    ${decoded}  Decode Bytes To String      ${encoded}      ASCII
    Log To Console      ${decoded}