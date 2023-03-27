*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login

*** Test Cases ***      user_name            password
Right user empty pwd    standard_user        ${EMPTY}
Right user wrong pwd    standard_user        xyz
Wrong user right pwd    standard_uses        secret_sauce
Wrong user empty pwd    standard_uses        ${EMPTY}
Wrong user worng pwd    standard_uses        xyz
Lock user right pwd     locked_out_user      secret_sauce



*** Keywords ***
Invalid login
    [Arguments]    ${user_name}     ${password}
    Input Username    ${user_name}
    Input Pwd    ${password}
    Click Login Button
    Error Message Should Be Visible