*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing Frames
    Open Browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    edge
    Maximize Browser Window

    Select Frame    name:packageListFrame       # id name xpath
    Click Link      org.openqa.selenium
    Unselect Frame

    Sleep    3

    Select Frame    name:packageFrame
    Click Link      Alert
    Unselect Frame

    Sleep    3

    Select Frame    name:classFrame
    Click Link      Index
    Unselect Frame

    Sleep    3

    Close Browser
