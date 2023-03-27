*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${login_url}    https://www.saucedemo.com/
${browser}      edge

*** Keywords ***
Open My Browser
    Open Browser    ${login_url}    ${browser}
    Maximize Browser Window

Close Browsers
    Close All Browsers

Open Login Page
    Go To    ${login_url}

Input username
    [Arguments]    ${user_name}
    Input Text    id:user-name      ${user_name}

Input pwd
    [Arguments]    ${password}
    Input Password    id:password   ${password}

Click login button
    Click Element    id:login-button

Click logout
    Click Element    react-burger-menu-btn
    Click Link    logout_sidebar_link

Error message should be visible
    Page Should Contain Element    xpath://h3[@data-test='error']

Prouduct page should be visible
    Page Should Contain    Products