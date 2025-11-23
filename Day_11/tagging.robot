*** Settings ***
Test Setup      Initialize Suite
Test Teardown       Cleanup Suite
Suite Setup     Login To Application
Suite Teardown      Logout From Application


*** Test Cases ***
TC1 Prepaid Recharge
        [Tags]      Smoke
    Log To Console      Executing: Prepaid recharge test case
TC2 Postpaid Recharge
        [Tags]      Sanity
    Log To Console      Executing: Postpaid recharge test case
TC3 Search
        [Tags]      Regression
    Log To Console      Executing: Search test case
TC4 Advanced Search
        [Tags]      Smoke       Regression
    Log To Console      Executing: Advanced Search test case


*** Keywords ***
Initialize Suite
    Log To Console      Opening Browser and Initializing Suite
Cleanup Suite
    Log To Console      Closing Browser and Cleaning Up Suite
Login To Application
    Log To Console      Logging in to the application
Logout From Application
    Log To Console      Logging out of the application