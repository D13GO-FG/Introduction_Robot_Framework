*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      edge
${url}          https://bonigarcia.dev/selenium-webdriver-java/web-form.html

*** Test Cases ***
Handling DropDowns and Lists
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    Select From List By Label    name:my-select     Three
    Sleep    2
    Select From List By Index    name:my-select     1
    Sleep    2
    Select From List By Value    name:my-select     2

    # List Box
#    Select From List By Label    selenium-commands   Swith Commands
#    Select From List By Label    selenium-commands   WebElement Commands
#    Sleep    3
#    Unselect From List By Label    selenium-commands   Swith Commands
