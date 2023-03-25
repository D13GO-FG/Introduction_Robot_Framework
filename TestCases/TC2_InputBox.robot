*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  edge
${url}      https://demo.nopcommerce.com/

*** Test Cases ***
Testing Input Box
    Open Browser                 ${url}  ${browser}
    Maximize Browser Window
    Title Should Be              nopCommerce demo store
    Click Link                   xpath://a[normalize-space()='Log in']

    ${email_textbox}             Set Variable    id:Email
    Element Should Be Visible    ${email_textbox}
    Element Should Be Enabled    ${email_textbox}

    Input Text                   ${email_textbox}   DiegoFlores@gmail.com
    Sleep    5
    Clear Element Text           ${email_textbox}
    Sleep    3

    Close Browser

*** Keywords ***
