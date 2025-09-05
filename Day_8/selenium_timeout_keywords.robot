*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${TIMEOUT}      105
${IMPLICIT_WAIT}        55
${PAGE_LOAD}        20s
${URL}      https://www.google.com

*** Test Cases ***
Example of Selenium Timeout Keywords
        Open Browser        ${URL}      ${BROWSER}      options=add_experimental_option("detach", True)
        Maximize Browser Window

        Set Selenium Timeout        ${TIMEOUT}
        ${timeout}      Get Selenium Timeout
        Log To Console      ${timeout}

        Set Browser Implicit Wait       ${IMPLICIT_WAIT}
        Set Selenium Implicit Wait      ${IMPLICIT_WAIT}
        ${implicit}=       Get Selenium Implicit Wait
        Log To Console      Current Implicit Wait:      ${implicit}

        Set Selenium Page Load Timeout      ${PAGE_LOAD}
        ${pageload}=        Get Selenium Page Load Timeout
        Log To Console      Current Page Load Timeout:      ${pageload}

        Close Browser