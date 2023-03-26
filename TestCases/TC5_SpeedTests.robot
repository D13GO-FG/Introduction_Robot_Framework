*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegTest
    ${spead}    Get Selenium Speed
    Log To Console    ${spead}
    Open Browser    https://demowebshop.tricentis.com/register  edge
    Maximize Browser Window

    #Sleep    3
    Set Selenium Speed    2 seconds

    Select Radio Button    Gender   M
    Input Text    name:FirstName    Diego
    Input Text    name:LastName     Flores
    Input Text    name:Email    ldiego@gmail.com
    Input Password    name:Password    qwe123
    Input Password    name:ConfirmPassword    qwe123

    ${spead}    Get Selenium Speed
    Log To Console    ${spead}


