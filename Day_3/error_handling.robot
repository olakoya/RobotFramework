*** Settings ***
Library     Dialogs

*** Test Cases ***
Try Except Else Finally Example
#    TRY
#        ${x}        Get Value From User     Enter First Number:
#        ${y}        Get Value From User     Enter Second Number:
#        ${result}   Evaluate                ${x}/${y}
#        Log To Console                      ${result}
#


    ${x}        Get Value From User     Enter First Number:
    ${y}        Get Value From User     Enter Second Number:
    ${result}   Evaluate                ${x}/${y}
    Log To Console                      ${result}
