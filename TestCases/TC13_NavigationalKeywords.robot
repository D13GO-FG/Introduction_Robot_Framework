*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Navigation Test
    Open Browser    https://www.google.com/    edge
    ${loc}  Get Location
    Log To Console    ${loc}

    Sleep    3

    Go To    https://www.bing.com/
    ${loc}  Get Location
    Log To Console    ${loc}

    Sleep    3

    Go Back
    ${loc}  Get Location
    Log To Console    ${loc}

    Sleep    3