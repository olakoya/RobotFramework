*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}      https://testautomationpractice.blogspot.com/
${WAIT_TIME}        10

*** Test Cases ***
Example of Selenium Timeout Keywords
        Open Browser        ${URL}      ${BROWSER}      options=add_experimental_option("detach", True)
        Maximize Browser Window

        Set Selenium Timeout        ${WAIT_TIME}

        Wait Until Element Is Visible       xpath=//a[text()='GUI Elements']

        Log To Console      Element 'GUI Elements is now visible'

        Wait Until Element Contains     xpath=//a[text()='GUI Elements']        GUI Elements
        Log To Console      "Element contains provided Text"

        Wait Until Page Contains        GUI Elements
        Log To Console      Page contains expected Text

        ${VISIBLE}=     Run Keyword And Return Status       Page Should Contain Element     xpath=//a[text()='GUI Elements']
        Log To Console      Element 'GUI Elements' is visible: ${VISIBLE}
        Close Browser