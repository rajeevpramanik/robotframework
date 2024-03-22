*** Settings ***
Documentation   This setting is for the login cookies policy settings.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${cookies icon image}=              ${login_image}cookies_icon.png

${cookies option xpath}                             xpath\=//body/main[@id\='root']/div[2]/div[1]
${cookies panel close option xpath}                 xpath\=(//span[contains(text(),'')])[1]
${cookies box text xpath}                           xpath\=(//p[contains(text(),'')])[1]
${cookies policy hyperlink xpath}                   xpath\=(//span[contains(text(),'')])[2]
${cookies storage hyperlink xpath}                  xpath\=(//span[contains(text(),'')])[4]
${analytics toogle button xpath}                    xpath\=//body/main[@id\='root']/div[2]/div[1]/div[3]/div[1]/label[1]/span[1]/span[1]/span[1]/input[1]
${cookies save button xpath}                        xpath\=//body/main[@id\='root']/div[2]/div[1]/div[5]/button[1]
${cookies accept all button xpath}                  xpath\=//body/main[@id\='root']/div[2]/div[1]/div[5]/button[2]
${cookies reject all button xpath}                  xpath\=//body/main[@id\='root']/div[2]/div[1]/div[5]/button[3]

${webcommunity cookies banner view element xpath}      xpath\=(//div[@class\='cookieBlock bottom left boxView'])[1]
${webcommunity cookies save button xpath}              xpath\=//button[normalize-space()\='Accept All']
${webcommunity cookies accept all button xpath}              xpath\=//button[normalize-space()\='Accept All']
${webcommunity cookies reject all button xpath}              xpath\=//button[normalize-space()\='Reject All']
${webcommunity cookies button xpath}                           xpath\=//div[@class\='cookieBtn']//button[@type\='button']

***Keywords***
KW: Verify the Cookie option is element presence to return true or false.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${webcommunity cookies banner view element xpath}
    ${true or false for cookies element on the login page}      Wait Until Keyword Succeeds         10sec       1sec        Is Element      ${webcommunity cookies banner view element xpath}
    Set Global Variable     ${true or false for cookies element on the login page}

KW: Verify the Cookie option element presence.
    Verify Element      ${cookies option xpath}

KW: Click on the Cookie option element.
    QWeb.Click Element      ${cookies option xpath}

KW: Verify the cookies panel close option.
    Verify Element      ${cookies panel close option xpath}

KW: Click the cookies panel close option.
    QWeb.Click Element      ${cookies panel close option xpath}

KW: Click on the Reject All button
    QWeb.Click Text     Reject All      anchor=Accept All

KW: Click on the Accept All button
    QWeb.Click Text     Accept All      anchor=Reject All

KW: Click on the Save button
    QWeb.Click Text     Save      anchor=Accept All

KW: Click on Analytics Toogle button.
    QWeb.Click Element      ${analytics toogle button xpath}        js=true

KW: Verify the cookies info.
    Verify Element Text     ${cookies box text xpath}       We use cookies to improve your experience on our site. You may change your settings at any time or accept the default settings. You may close this banner to continue with only essential cookies. To get more information about these cookies check our Cookie Policy.

KW: Verify Cookie policy text.
    Verify Element Text     ${cookies policy hyperlink xpath}       Cookie Policy

KW: Verify Cookie policy links.
    Verify Links     https://gurupoint.com/privacy-policy/     #True

KW: Verify Storage Preferences text.
    Verify Element Text     ${cookies storage hyperlink xpath}       Storage Preferences

KW: Verify the green success alert after save, accept or reject.
    Verify Element Text       ${branding saving green success alert xpath}      Success
    Verify Element Text       ${branding saving green success alert xpath}      Record Saved Successfully

KW: webcommunity cookies, verify the text displayes.
    Wait Until Keyword Succeeds         10sec       1sec        Verify All      We use cookies to improve your experience on our site, We use essential and optional cookies, You may go through our Cookie Policy to understand how we use the cookies, You may change your settings at any time or accept the default settings

KW: webcommunity cookies, verify the save element displayes.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${webcommunity cookies save button xpath}

KW: webcommunity cookies, verify the accept all element displayes.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${webcommunity cookies accept all button xpath}

KW: webcommunity cookies, verify the reject all element displayes.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${webcommunity cookies reject all button xpath}

KW: webcommunity cookies, click on accept all element.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${webcommunity cookies save button xpath}        js=true

KW: Verify the cookies button element is present after saving, rejecting or accepting.
    Verify Element      ${webcommunity cookies button xpath}

KW: Condition to verify and validate by saving, accepting or rejecting all webcommunity cookies.
    KW: Verify the Cookie option is element presence to return true or false.
    Run Keyword if      "${true or false for cookies element on the login page}" == "True"      Run Keyword And Continue On Failure         KW: webcommunity cookies, verify the text displayes.
    Run Keyword if      "${true or false for cookies element on the login page}" == "True"      Run Keyword And Continue On Failure         KW: webcommunity cookies, verify the save element displayes.
    Run Keyword if      "${true or false for cookies element on the login page}" == "True"      Run Keyword And Continue On Failure         KW: webcommunity cookies, verify the accept all element displayes.
    # Run Keyword if      "${true or false for cookies element on the login page}" == "True"      Run Keyword And Continue On Failure         KW: webcommunity cookies, verify the reject all element displayes.
    # Run Keyword if      "${true or false for cookies element on the login page}" == "True"      Run Keyword And Continue On Failure         KW: webcommunity cookies, click on accept all element.
    # Run Keyword if      "${true or false for cookies element on the login page}" == "True"      Run Keyword And Continue On Failure         KW: Verify the cookies button element is present after saving, rejecting or accepting.

