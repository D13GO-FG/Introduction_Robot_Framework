*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegTest
    Open Browser    https://demowebshop.tricentis.com/register  edge
    Maximize Browser Window

    ${implicit_time}    Get Selenium Implicit Wait
    Log To Console    ${implicit_time}

    Set Selenium Implicit Wait    10 seconds

    ${implicit_time}    Get Selenium Implicit Wait
    Log To Console    ${implicit_time}

    Select Radio Button    Gender   M
    Input Text    name:FirstName    Diego
    Input Text    name:LastName     Flores
    Input Text    name:Email    ldiego@gmail.com
    Input Password    name:Password    qwe123
    Input Password    name:ConfirmPassword    qwe123
