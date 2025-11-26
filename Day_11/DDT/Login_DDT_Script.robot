*** Settings ***
Library     SeleniumLibrary
Resource    ./login_page_resource.robot
Suite Setup  Open My Browser
Suite Teardown  Close Browsers
Test Template  Invalid Login

*** Variables ***
${DASHBOARD_URL}
https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${ERROR_MSG}        Invalid credentials

*** Test Cases ***      username        password
Right user Right pass       Admin       admin123
Right user Wrong pass       Admin       admin12
Wrong user Right pass       Adm         admin123
Wrong user Wrong pass       Adm         admin12

*** Keywords ***
