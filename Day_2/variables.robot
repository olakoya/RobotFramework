*** Settings ***
Variables       ../Day_2/variables.py


*** Variables ***
${SCALAR_VAR}      Hello
@{LIST_VAR}     Item1 Item2 Item3
&{DICT_VAR}     Key1=value1     Key2=value2     Key3=value3
...             Key4=value4

*** Test Cases ***
Test Creating Variables
#    log     ${SCALAR_VAR}
#    Log To Console      ${SCALAR_VAR}
#    Log Many        ${LIST_VAR}
#    Log Many        ${DICT_VAR}
#    Log To Console      ${LIST_VAR}[0]
#    Log To Console      ${LIST_VAR[0]}
#    Log To Console      ${DICT_VAR}[Key2]
#    Log To Console      ${DICT_VAR["Key3"]}
#    Log To Console      ${DICT_VAR.Key4}
#     Log    ${SCALAR_FROM_FILE}
#     Log Many       @{LIST_FROM_FILE}
#     Log Many       &{DICT_FROM_FILE}
# Logging data in the console and pass value in the cmdline
# How to specify the variables? ==> robot -d Results --v Day_2/variables.robot(sharp notation)
# SIngular notation ==> robot -d Results -v CMD_VAR:SACHIN Day_2/variables.robot

#    Log to console      ${CMD_VAR}

# Creating variables
    ${result}=      Add Numbers     5       10
    Log To Console      ${result}

*** Keywords ***
Add Numbers
    [Arguments]     ${a}    ${b}
    ${sum}=     Evaluate    ${a}+${b}
    RETURN    ${sum}