*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handle Tables
#    Handling Mouse Operations
    Open Browser    ${URL}    chrome        options=add_experimental_option("detach", True);add_arguement(--headless")
    Maximize Browser Window
    Set Selenium Implicit Wait    10s

    # Verify table has expected text
    Table Should Contain    xpath=//table[@name="BookTable"]    Mukesh

    # Get number of rows and columns
    ${rows}=    Get Element Count    xpath=//table[@name="BookTable"]//tr
    ${cols}=    Get Element Count    xpath=//table[@name="BookTable"]//tr[2]/td

    Log To Console    Rows: ${rows}
    Log To Console    Cols: ${cols}

    # Get specific cell (row 3, column 4)
    ${cell_data}=    Get Table Cell    xpath=//table[@name="BookTable"]    3    4
    Log To Console    Cell data (3,4): ${cell_data}

    Close Browser