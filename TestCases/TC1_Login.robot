*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  edge
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    Open Browser    ${url}   ${browser}
    LoginToApplication
    Close Browser

*** Keywords ***
LoginToApplication
    Click Link    xpath://a[normalize-space()='Log in']
    Input Text    id:Email  pavanoltraining@gmail.com
    Input Password    id:Password   Test@123
    Click Element    xpath://button[normalize-space()='Log in']
