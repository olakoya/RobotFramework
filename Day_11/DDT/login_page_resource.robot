*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}      chrome

*** Keywords ***
Open My Browser
    Open Browser    ${URL}    ${BROWSER}        options=add_experimental_option("detach", True)
    Maximize Browser Window
    Set Selenium Implicit Wait    3s
Close Browsers
    Close All Browsers
Open Login Page
    Go To       ${LOGIN URL}
Input Username
    [Arguments]     ${username}
    Input Text      xpath=//input[@name='username']      ${username}
Input Password
    [Arguments]     ${password}
    Input Text      xpath=//input[@name='password']      ${password}
Click Login Button
    Click Element       xpath=//button[@type='submit']
Click Logout Link
    Click Element       class:oxd-userdropdown-name
    Click Link      Logout

