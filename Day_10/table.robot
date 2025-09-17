*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${URL}      https://testautomationpractice.blogspot.com/
*** Test Cases ***
Handling Tables
    Open Browser        ${URL}      chrome      options=add_experimental_option("detach", True)
    Maximize Browser Window
    Set Selenium Implicit Wait      10s
    Table Should Contain        //table[@name="BookTable"]      Mukesh

    ${rows}     Get Element Count       //table[@name="BookTable"]//tr
    ${cols}     Get Element Count       //table[@name="BookTable"]//tr[2]/td
    Log To Console      ${rows}
    Log To Console      ${cols}

    ${cell_data}        Get Table Cell      //table[@name="BookTable"]      5       1
    Log To Console      ${cell_data}

     ${cell_data}        Get Table Cell      //table[@name="BookTable"]      3       4
    Log To Console      ${cell_data}


    Close Browser