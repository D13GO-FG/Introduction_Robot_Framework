*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Capture Screen Test
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      edge
    Maximize Browser Window

    Sleep    3

    Input Text    username      Admin
    Input Text    password      admin123

    Capture Element Screenshot    xpath://img[@alt='company-branding']      D:/2022/pythonProject/Introduction_Robot_Framework/TestCases/screenshots/logo.png
    Capture Page Screenshot    D:/2022/pythonProject/Introduction_Robot_Framework/TestCases/screenshots/TC14_Login.png