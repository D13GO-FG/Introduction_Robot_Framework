*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Create an Invoice
    My Keyword
    Comment    This is my first RobotFramework test case!
    Navigate To Home Page
    Page Should Contain    Invoice Manager

*** Keywords ***
My Keyword
    Log To Console    This is a keyword I created!
Navigate to Home Page
    Open Browser    http://inv.beaufortfairmont.com/    edge