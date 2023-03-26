*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling Alerts
    Open Browser    https://bonigarcia.dev/selenium-webdriver-java/dialog-boxes.html    edge
    Click Element    id:my-confirm

    Sleep    3

    # Handle Alert    ACCEPT
    # Handle Alert    DISMISS
    # Handle Alert    LEAVE
    # Alert Should Not Be Present        Is this correct?
