*** Test Cases ***
Simple If/Else
    ${rc}       Set Variable        -1

    IF          ${rc}>0
            Log To Console         Positive
    ELSE IF     ${rc}<0
            Log To Console         Negative
    ELSE
            Log To Console         Zero
    END