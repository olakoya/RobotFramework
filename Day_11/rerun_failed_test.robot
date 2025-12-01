*** Test Cases ***
Compare Equal Values
    [Tags]      test:retry(3)
    [Documentation]     Test to Compare Equal Values.
    ${value1}    Set Variable    10
    ${value2}    Set Variable    10
    Should Be Equal    ${value1}    ${value2}    Values are not equal!

Compare Unequal Values
    [Documentation]    Test to Compare Unequal Values.
    ${value1}    Set Variable    10
    ${value2}    Set Variable    20
    Should Not Be Equal    ${value1}    ${value2}    Values should not be equal!

Compare Greater Value
    [Documentation]    Test to verify value1 is greater than value2.
    ${value1}    Set Variable    20
    ${value2}    Set Variable    10
    Should Be True    ${value1} > ${value2}    ${value1} is not greater than ${value2}!
