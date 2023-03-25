*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Check main page
    Open Browser    https://es.wikipedia.org/wiki/Wikipedia:Portada     edge
    Comment    Checking that we're on the main page of wikipedia
    Page Should Contain    Wikipedia