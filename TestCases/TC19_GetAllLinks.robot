*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Get all links test
    Open Browser    https://demo.guru99.com/test/newtours/  edge
    Maximize Browser Window
    ${AllLinksCount}     Get Element Count    xpath://a
    Log To Console    ${AllLinksCount}

    @{LinkItems}    Create List
    FOR    ${i}     IN RANGE    1   ${AllLinksCount}+1
        ${LinkText}     Get Text    xpath:(//a)[${i}]
        Log To Console    ${LinkText}
    END