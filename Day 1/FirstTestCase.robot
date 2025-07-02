*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.example.com

*** Test Cases ***
Open Example Page
    Open Browser    ${URL}    Chrome
    Sleep    3s
    Close Browser