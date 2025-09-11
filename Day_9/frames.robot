*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${URL}      https://ui.vision/demo/webtest/frames/

*** Test Cases ***
Handle Frames
    Open Browser        ${URL}      chrome      options=add_experimental_option("detach", True)
    Maximize Browser Window
    Set Selenium Implicit Wait      10s

    Select Frame        //frame[@src="frame_1.html"]
    Input Text      //input[@name='mytext1']        Testing1
    Unselect Frame

    Select Frame        //frame[@src="frame_2.html"]
    Input Text      //input[@name='mytext2']        Testing2