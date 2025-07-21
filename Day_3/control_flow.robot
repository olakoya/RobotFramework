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

While Loop Even Numbers
     ${i}       Set Variable        2       #Initialisation
     WHILE      ${i}<=100                   #Condition
        Log To Console      ${i}
        ${i}     Evaluate        ${i}+2     #Incrementation
     END

While Loop Odd Numbers
     ${i}       Set Variable        1       #Initialisation
     WHILE      ${i}<=100                   #Condition
        Log To Console      ${i}
        ${i}     Evaluate        ${i}+2     #Incrementation
     END

For Loop Even Numbers
     FOR        ${element}       IN RANGE        2     100     2       #Initialisation
        Log To Console      ${element}                  #Condition
     END

For Loop Odd Numbers
     FOR        ${element}       IN RANGE        1     100     2       #Initialisation
        Log To Console      ${element}                  #Condition
     END

For Loop Example with BREAK and CONTINUE
     FOR        ${element}       IN RANGE        0     6       #Initialisation
        IF      ${element}==3
                BREAK
     END
        Log To Console      ${element}                  #Condition
     END

    FOR        ${element}       IN RANGE        0     6       #Initialisation
        IF      ${element}==3
                CONTINUE
     END
        Log To Console      ${element}                  #Condition
     END