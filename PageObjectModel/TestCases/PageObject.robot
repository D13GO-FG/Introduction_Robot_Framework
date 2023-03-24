*** Settings ***
Documentation  Page Object in Robot Framework
Library  SeleniumLibrary
Resource  ../KeywordDefinationFiles/LoginPage.robot
Resource  ../KeywordDefinationFiles/HomePage.robot
Resource  ../KeywordDefinationFiles/Common.robot

*** Variables ***
${site_url}  https://opensource-demo.orangehrmlive.com/
${browser}  edge

*** Test Cases ***
Verify Successful Login to OrangeHRM
    [documentation]  This test case verifies that the user is able to successfully Login and Logout to OrangeHRM using Page Object
    [tags]  Smoke
    Opening Browser  ${site_url}  ${browser}
    Input Username
    Input Password
    Click Login
    Verify Welcome Text is Visible
    Logout
    Close Browser

*** Keywords ***