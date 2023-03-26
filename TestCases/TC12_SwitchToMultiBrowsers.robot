*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mutiple Browsers Test
    Open Browser    https://www.google.com/    edge
    Maximize Browser Window

    Sleep    3

    Open Browser    https://www.bing.com/   edge
    Maximize Browser Window

    Switch Browser    1

    ${title_1}  Get Title
    Log To Console    ${title_1}

    Switch Browser    2

    ${title_2}  Get Title
    Log To Console    ${title_2}

    Sleep    3

    Close All Browsers