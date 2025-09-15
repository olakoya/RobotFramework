*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${URL}      https://testautomationpractice.blogspot.com/
#${URL}      https://www.amazon.com/
${COOKIE_NAME}      MyCookie
${COOKIE_VALUE}     123456

*** Test Cases ***
Handle Dropdown and Cookies
    open Browser        ${URL}      chrome      options=add_experimental_option("detach", True)
    Maximize Browser Window
    Set Selenium Implicit Wait      10s

#    Select From List By Label       //select[@id='country']     France

#    Select From List By Value      //select[@id='country']     australia

#    Select From List By Index       //select[@id='country']     3

#    ${options}      Get List Items      //select[@id='country']
#    Log To Console      ${options}
#    ${count}        Get Length      {options}
#    Log To Console      ${count}

    # Get existing cookies
    ${all_cookies}=     Get Cookies     bool=True
    ${total_cookies}        Get Length      ${all_cookies}
    Log To Console      Total Number of Cookies Created: ${total_cookies}

    # Add a new cookie
    Log Many        ${all_cookies}
    Add Cookie      name=${COOKIE_NAME}     value=${COOKIE_VALUE}
    ${all_cookies}=     Get Cookies     bool=True
    ${total_cookies}        Get Length      ${all_cookies}
    Log To Console      Total Number of Cookies Created: ${total_cookies}

    # Retrieve one cookie by name
    ${retrieved_cookie}=        Get Cookies     bool=True
    Log To Console      Retrieved Cookie Details: ${retrieved_cookie}

    # Delete all cookies
    Delete All Cookies
    ${all_cookies}=     Get Cookies     bool=True
    ${total_cookies}        Get Length      ${all_cookies}
    Log To Console      Total Number of Cookies Created: ${total_cookies}

    Close Browser