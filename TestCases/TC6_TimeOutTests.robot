*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegTest
    Open Browser    https://demowebshop.tricentis.com/register  edge
    Maximize Browser Window

    ${time}     Get Selenium Timeout
    Log To Console    ${time}

    Set Selenium Timeout    10 seconds
    Wait Until Element Contains     class:page-title    Register

    Select Radio Button    Gender   M
    Input Text    name:FirstName    Diego
    Input Text    name:LastName     Flores
    Input Text    name:Email    ldiego@gmail.com
    Input Password    name:Password    qwe123
    Input Password    name:ConfirmPassword    qwe123
