*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${URL}      https://testautomationpractice.blogspot.com/
${COOKIE_NAME}      MyCookie
${COOKIE_VALUE}     123456

*** Test Cases ***
Handle Dropdown and Cookies
    open Browser        ${URL}      chrome      options=add_experimental_option("detach", True)
    Maximize Browser Window
    Set Selenium Implicit Wait      10s

#    Select From List By Label       //select[@id='country']     France

#    Select From List By Value      //select[@id='country']     australia

    Select From List By Index       //select[@id='country']     3

#    ${options}      Get List Items      //select[@id='country']
#    Log To Console      ${options}
#    ${count}        Get Length      {options}
#    Log To Console      ${count}