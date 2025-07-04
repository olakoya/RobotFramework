# DAY 1 EXERCISE
#Open Web Browser (Chrome/Firefox/Edge)
#Open URL https://opensource-demo.orangehrmlive.com/
#Enter Username (Admin)
#Enter Password (admin1234)
#Click on Login
#Capture title of the home page (Actual title)
#Verify title of the page: OrangeHRM (Expected)
#Close browser



*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
${Browser}      Chrome
${exp_title}       OrangeHRM
${USERNAME}     Admin
${PASSWORD}     admin123

*** Test Cases ***
Login Test
    [Documentation]     This is test case to login into the application
    Open Browser    ${URL}     ${Browser}     #options=add_experimental_option("detach", True)     #https://opensource-demo.orangehrmlive.com/

    Maximize Browser Window

    Set Selenium Implicit Wait  3s

    Login Steps

#    Input Text      name=username       ${USERNAME}     # Admin
#
#    Input Text      name=password      ${PASSWORD}      #admin123
#
#    Click Button        xpath=//button
#
#    ${act_title}=       Get Title    # Actual Title Varibale
#
#    Should Be Equal         ${act_title}        ${exp_title}            # Assertion
#
#    Close All Browsers


*** Keywords ***
 Login Steps
    Input Text      name=username       ${USERNAME}     # Admin

    Input Text      name=password      ${PASSWORD}      #admin123

    Click Button        xpath=//button

    ${act_title}=       Get Title    # Actual Title Varibale

    Should Be Equal         ${act_title}        ${exp_title}            # Assertion

    Close All Browsers

*** Comments ***
    This is Login Test Case of Orange HRM