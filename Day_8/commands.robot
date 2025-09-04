*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      https://www.google.com
${EXPECTED_TITLE}       Google
${EXPECTED_TEXT}       Google
${EXPECTED_LINK}       Advertising
${NEW_URL}      https://www.python.org


*** Test Cases ***
verify Website Functionality
    [Documentation]     This test case verifies mutiple aspects of a website
    Open Browser        ${URL}      chrome      options=add_experimental_option("detach", True)
    Maximize Browser Window

    ${title}        Get Title
    Log To Console      ${title}
    Title Should Be     ${EXPECTED_TITLE}
    Log Title

    Page Should Contain     ${EXPECTED_TEXT}
    Page Should Contain Link        ${EXPECTED_LINK}

    ${current_location}     Get Location
    Log To Console      ${current_location}

    Location Should Be      ${current_location}

    Go To       ${NEW_URL}
    Reload Page

    Page Should Contain     Python

#    Close Browser