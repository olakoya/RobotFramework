*** Settings ***
Library     Dialogs

#*** Test Cases ***
#Try Except Else Finally Example
#    TRY
#        ${x}        Get Value From User     Enter First Number:
#        ${y}        Get Value From User     Enter Second Number:
#        ${result}   Evaluate        ${x}/${y}
#        Log To Console      ${result}
#    EXCEPT      ZeroDivisionError
#        Log To Console      An error occurred: Division by zero or invalid input.
#    EXCEPT      FileNotFoundError
#        Log To Console      Throwing FileNotFoundError Error
#    EXCEPT
#        Log To Console      Exception Handled
#    ELSE
#        Log To Console      No Exceptions Occured
#    FINALLY
#        Log To Console      Always Executed: Done with TRY/EXCEPT
#    END

*** Test Cases ***
Try Except Else Finally Example
#    TRY
#        ${x}        Get Value From User     Enter First Number:
#        ${y}        Get Value From User     Enter Second Number:
#        ${result}   Evaluate        ${x}/${y}
#        Log To Console      ${result}

    ${x}        Get Value From User     Enter First Number:
    ${y}        Get Value From User     Enter Second Number:
    ${result}   Evaluate        ${x}/${y}
    Log To Console      ${result}
