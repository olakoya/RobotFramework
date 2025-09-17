*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}      http://www.deadlinkcity.com/


*** Test Cases ***
Handling Links
    Open Browser        ${URL}      chrome      options=add_experimental_option("detach", True)
    Maximize Browser Window
    Set Selenium Implicit Wait      10s

    ${all_links}        Get webelements     xpath://a
    ${links_count}      Get Length       ${all_links}
    Log To Console      ${links_count}
    FOR     ${link}     IN      @{all_links}
        ${link_text}        Get Text        ${link}
        Log To Console      ${link_text}
    END


    Close Browser