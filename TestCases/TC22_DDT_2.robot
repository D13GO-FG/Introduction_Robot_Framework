*** Settings ***
Library     SeleniumLibrary
Library     DataDriver   ../TestData/LoginData.xlsx  sheet_name=Hoja 1
Resource    ../Resources/login_resources.robot

Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login

*** Test Cases ***
Login Test with Excel using ${username} and ${password}

*** Keywords ***
Invalid login
    [Arguments]    ${username}  ${password}
    Input Username    ${username}
    Input Pwd         ${password}
    Click Login Button
    Error Message Should Be Visible
