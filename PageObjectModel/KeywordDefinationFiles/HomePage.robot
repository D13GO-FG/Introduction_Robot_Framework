*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/testData.py

*** Keywords ***
Verify Welcome Text is Visible
    Wait Until Element Is Visible  ${WelcomeText}  timeout=5
    Element Should Be Visible  ${WelcomeText}

Logout
    Click Element  ${WelcomeText}
    Wait Until Element Is Visible  ${LogoutButton}  timeout=5
    Click Element  ${LogoutButton}
    Wait Until Element Is Visible  ${LoginUsernameInputBox}  timeout=5