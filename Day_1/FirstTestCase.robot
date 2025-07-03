#Open Web Browser (Cjrome/Firefox/Edge)
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

*** Test Cases ***
Login Test
    [Documentation]     This is test case to login into the application
    Open Browser    https://opensource-demo.orangehrmlive.com/  chrome  options=add_experimental_option("detach", True)
    Maximize Browser Window
    Set Selenium Implicit Wait


    Sleep    3s
    Close Browser

*** Keywords ***
*** Comments ***