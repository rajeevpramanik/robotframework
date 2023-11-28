*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${setting on hamburger xpath}                   xpath\=//span[normalize-space()\='SETTINGS']
${Vertical tabs login option xpath}             xpath\=//span[normalize-space()\='Login Options']
${restrict access toggle button xpath}          xpath\=//input[@name\='is_restrict']
${default login code xpath}                     xpath\=//input[@placeholder\='Enter Login Code']
${webcommunity sso login element xpath}            xpath\=//button[normalize-space()\='Continue with SSO']

${google workos email field xpath}              xpath\=//input[@id\='identifierId']
${google workos password field xpath}           xpath\=//input[@name\='password']

${webcommunity logout button on the top right cornor}          xpath\=//span[normalize-space()\='Logout']

${email}=       rajeev.rpa.automation@gmail.com
${password}=    0Qwer!y0

***Keywords***
KW: Click on the setting module.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${setting on hamburger xpath}

KW: Click on the vertical tab login option module.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${Vertical tabs login option xpath}

KW: Scroll to the login code element.
    Scroll To       Default Login Code      anchor=Login Code

KW: Type login code for all users.
    Type Text       ${default login code xpath}         123456

KW: Click on the save button.
    QWeb.Click Text         Save        anchor=Cancel

KW: Save success green alert after saving the code.
    Verify Element Text       ${success green alert xpath}                      Success
    Verify Element Text       ${success alert for event creation xpath}         Login settings have been updated.
    
KW: Verify webcommunity sso login element is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Element         ${webcommunity sso login element xpath}

KW: Click on the sso login element.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${webcommunity sso login element xpath}

KW: Verify webcommunity sso login google email element is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Element         ${google workos email field xpath}

KW: Type email on the google workos email field.
    Type Text       ${google workos email field xpath}        ${email}

KW: Click the next button on the google workos page after entering the email id.
    QWeb.Click Text     Next    anchor=Create account

KW: Type password on the google workos email field.
    Type Text       ${google workos password field xpath}       ${password}

KW: Click the next button on the google workos page after entering the password id.
    QWeb.Click Text     Next    anchor=Forgot password?

KW: Wait for the element on the webcommunity page.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Element         ${webcommunity logout button on the top right cornor}

KW: Click on the webcommunity logout element.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${webcommunity logout button on the top right cornor}

KW: Click on the Custom Login Code radio buton.
    QWeb.Click Text     Custom Login Code    anchor=System Generated Code