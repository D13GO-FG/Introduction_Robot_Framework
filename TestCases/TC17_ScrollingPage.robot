*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Scrolling Test
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   edge
    Maximize Browser Window

    # Scroll to Y position
    #Execute Javascript    window.scrollTo(0, 2500)

    # Scroll to specific web element
    #Scroll Element Into View    xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[79]/td[2]

    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)     #end of the page
    Sleep    3
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)    #starting point
