*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}      https://demo.guru99.com/test/newtours/
${browser}  edge

*** Test Cases ***
TC1
    ${PageTitle}    LaunchBrowser   ${url}  ${browser}
    Log To Console    ${PageTitle}
    Log    ${PageTitle}
    Input Text    name:userName     mercury
    Input Text    name:password     mercury



