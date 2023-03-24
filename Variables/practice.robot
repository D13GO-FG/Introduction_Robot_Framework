*** Settings ***
Library  SeleniumLibrary
Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser

*** Test Cases ***
Using Variables
    Comment     This tests uses varibles!

*** Keywords ***
Navigate To Home Page
    Open Browser    ${SiteUrl}      ${browser}
    Sleep    1

*** Variables ***
${SiteUrl}  https://es.wikipedia.org/wiki/Wikipedia:Portada
${browser}  edge