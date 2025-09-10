*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${URL}      https://testautomationpractice.blogspot.com/
${XPATH}        //input[@id='name']
${TEXT}     John Canedy
${MALE_XPATH}       //input[@id='male']
${CHECKBOX_XPATH}       //input[@type='checkbox' and contains(@id,'day')]

*** Test Cases ***
Handle Webelements
    open Browser        ${URL}      chrome      options=add_experimental_option("detach", True)
    Maximize Browser Window
    Set Selenium Implicit Wait      10s

#    Page Should Contain Textfield       ${XPATH}
#    Input Text      ${XPATH}      ${TEXT}
#    Sleep       3s
#    Clear Element Text      ${XPATH}
#
#    Page Should Contain Radio Button        ${MALE_XPATH}
#    ${male_status}      Run Keyword And Return Status       Radio Button Should Not Be Selected     gender
#    Log To Console      Status of Male Radio Button:${male_status}
#    Click Element       ${MALE_XPATH}
#    ${male_status}      Run Keyword And Return Status       Radio Button Should Not Be Selected     gender
#    Log To Console      Status of Male Radio Button:${male_status}

#    Page Should Contain Checkbox        //input[@id='monday']
#    Checkbox Should Not Be Selected     //input[@id='monday']
#    Click Element       //input[@id='monday']
#    Checkbox Should Be Selected     //input[@id='monday']
    ${checkboxes}       Get Webelements    ${CHECKBOX_XPATH}
    ${total_checkboex_count}        Get length      ${checkboxes}
    Log To Console      ${total_checkboex_count}
    FOR     ${checkbox}       IN      @{checkboxes}
        Click Element       ${checkbox}
    END
#    Close Browser