*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      edge
${url}          https://www.globalsqa.com/samplepagetest/

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    2 seconds

    # Selecting Radio Button
    Select Radio Button    g2599-education  Graduate

    # Selecting Checbox
    Select Checkbox    xpath://input[@value='Functional Testing']
    Select Checkbox    xpath://input[@value='Automation Testing']
    Select Checkbox    xpath://input[@value='Manual Testing']

    Unselect Checkbox   xpath://input[@value='Manual Testing']