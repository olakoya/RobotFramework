*** Test Cases ***
Simple If/Else
    ${rc}       Set Variable        0

    IF          ${rc}>0
            Log To Console         Positive
    ELSE IF     ${rc}<0
            Log To Console         Negative
    ELSE
            Log To Console         Zero
    END

Inline If Else
    ${rc}       Set Variable        -1
     IF          ${rc}>0        Log To Console         Positive     ELSE IF     ${rc}<0        Log To Console         Negative      ELSE       Log To Console         Zero

Nested IF ELSE
    ${rc}       Set Variable        18

    IF          ${rc}>0
            IF      ${rc}%2==0
                Log To Console         Positive and Even
            ELSE
                Log To Console         Positive and Odd
            END

    ELSE IF     ${rc}<0
            Log To Console         Negative
    ELSE
            Log To Console         Zero
    END

While Loop Even Number
     ${i}       Set Variable        2       #Initialisation
     WHILE      ${i}<=100                   #Condition
        Log To Console      ${i}
        ${i}     Evaluate        ${i}+2     #Incrementation
     END
