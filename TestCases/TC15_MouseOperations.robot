*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mouse Actions
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   edge
    Maximize Browser Window

    # Right Click/Open context Menu
    Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']
    Sleep    3

    # Double click action
    Go To    https://bonigarcia.dev/selenium-webdriver-java/dropdown-menu.html
    Maximize Browser Window
    Double Click Element    my-dropdown-3
    Sleep    3

    # Drag and Drop
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box6    id:box106
    Sleep    5

    Close Browser