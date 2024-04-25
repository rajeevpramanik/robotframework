*** Settings ***
Library         QWeb

*** Keywords ***
# Appstate       Login
with arguments:
    Appstate       Login    fenix   rising123

*** Test Cases ***
# Example block:
Login
    [Arguments]     ${USER}=username     ${PASS}=password
    Goto        https://www.qentinel.com
    TypeText    Username     ${USER}
    TypeText    Password     ${PASS}
    ClickText   Login
    VerifyText  Welcome, ${USER}