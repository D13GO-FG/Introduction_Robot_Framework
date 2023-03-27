*** Settings ***

*** Test Cases ***
TC1 User Registration Test
    [Tags]    regression
    Log To Console    This is user reg test
    Log To Console    User Registration test is over
TC2 Login Test
    [Tags]    sanity
    Log To Console    This is login test
    Log To Console    Login test is over
TC3 Change User Settings
    [Tags]    regression
    Log To Console    This is changin user setting test
    Log To Console    Change user setting test is over
TC4 Logout Test
    [Tags]    sanity
    Log To Console    This is logout Test
    Log To Console    Logout test is over

# robot TC26_Tagging.robot
# robot --include=sanity TC26_Tagging.robot
# robot --include=regression TC26_Tagging.robot
# robot -i sanity -i regression TC26_Tagging.robot
# robot -e regression TC26_Tagging.robot
# robot -e sanity TC26_Tagging.robot
# robot -e sanity -i regression TC26_Tagging.robot