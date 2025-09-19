*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling Mouse Operations
    Open Browser        ${URL}      chrome      options=add_experimental_option("detach", True)
    Maximize Browser Window
    Set Selenium Implicit Wait      10s

    Scroll Element Into View        //*[text()='Copy Text']
    Mouse Over      //button[text()='Point Me']
    Double Click Element        //*[text()='Copy Text']
    Textfield Value Should Be       id:field2       Hello World!
    Drag And Drop       //div[@id='draggable']      //div[@id='droppable']
    ${min_location}=        Get Horizontal Position     //div[@id='slider-range']/span[1]
    Log To Console      Before moving Min slider Location: ${min_location}
    Drag And Drop By Offset     //div[@id='slider-range']/span[1]       -20     0
    ${min_location}=        Get Horizontal Position     //div[@id='slider-range']/span[1]
    Log To Console      After moving Min slider Location: ${min_location}
    Close Browser