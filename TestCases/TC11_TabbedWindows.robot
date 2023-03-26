*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tabbed Windows
    Open Browser    https://demo.automationtesting.in/Windows.html    edge
    Maximize Browser Window

    Click Element    xpath://*[@id="Tabbed"]/a/button
    Switch Window   title:Selenium
    Click Element    xpath://span[normalize-space()='Blog']
    Sleep    3

    Close All Browsers