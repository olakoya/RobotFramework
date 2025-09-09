*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${URL}      https://testautomationpractice.blogspot.com/
${XPATH}        //input[@id='name']
${TEXT}     John Canedy
${MALE_XPATH}       //input[@id='male']
${CHECKBOX_XPATH}       //input[@type='checkbox' and contains(@id,'day')]

*** Test Cases ***
