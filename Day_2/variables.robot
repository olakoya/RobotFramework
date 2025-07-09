*** Settings ***
*** Variables ***
${SCALAR_VAR}      Hello
@{LIST_VAR}     Item1 Item2 Item3
&{DICT_VAR}     Key1=value1     Key2=value2     Key3=value3
...             Key4=value4

*** Test Cases ***
Test Creating Variables
    log     ${SCALAR_VAR}
    Log To Console      ${SCALAR_VAR}
    Log Many        ${LIST_VAR}
    Log Many        ${DICT_VAR}
    Log To Console      ${LIST_VAR}[0]
    Log To Console      ${LIST_VAR[0]}

*** Keywords ***