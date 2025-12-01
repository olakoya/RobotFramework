*** Test Cases ***
Compare Equal Values
    [Documentation]     Test to Compare Equal Values.
    [Tags]      test:retry(3)
    ${value1}       Set Variable        10
    ${value2}       Set Variable        20
    Should Be Equal      ${value1}       ${value2}      Values are not equal!