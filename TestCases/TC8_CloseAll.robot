*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTesCase
    Open Browser    https://demowebshop.tricentis.com/register      edge
    Maximize Browser Window

    Open Browser    https://bonigarcia.dev/selenium-webdriver-java/web-form.html       edge
    Maximize Browser Window

    # Close Browser
    Close All Browsers