*** Settings ***
Library    SeleniumLibrary
# Library    OperatingSystem
# Library    AutoRecorder

# Suite Setup            Open Browser    https://www.makemytrip.com/    browser=firefox
# Suite Teardown         Close All Browsers

*** Comments ***


*** Variables ***
${site url}             https://www.goindigo.in
${browser}              chrome

${pop up image xpath}        xpath=(//div[@class='dy-popup-col'])[1]
${close pop up xpath}        xpath=(//span[@id='salePopupCloseBtn'])[1]
${accept cookies xpath}      xpath=(//button[normalize-space()='Accept cookies'])[1]
${from field xpath}          xpath=//input[@placeholder='From']
${from auto suggestion drop down xpath}        xpath=(//div[contains(@class,'destination-auto-suggestion-dropdown__results')])[1]


*** Keywords ***
KW: Open browser
    [Documentation]        Keyword to open the browser
    Open Browser       ${site url}       ${browser}    
    # ...    ff_profile_dir="permissions.default.desktop-notification":"2"

KW: Close all browsers
    Close All Browsers

KW: Page load time
    Set Selenium Page Load Timeout        value=30 sec

KW: Maximize window
    Maximize Browser Window

KW: Click
    [Arguments]    ${xpath}
    Click Element    ${xpath}

KW: Element exist
    [Arguments]    ${xpath}
    Wait Until Page Contains Element    ${xpath}    timeout=10 sec    limit=None

KW: Sleep
    [Arguments]    ${time}
    Sleep    ${time}

KW: Clear Element Text
    [Arguments]    ${xpath}
    Clear Element Text        ${xpath}

KW: Input Text
    [Arguments]    ${xpath}    ${text}      ${clearBoolean}
    Input Text    locator=${xpath}    text=${text}    clear=${clearBoolean}


*** Test Cases ***
TC: Launch the browser and redirect to the website
    [Documentation]    Open the browser.
    ...    Wait for the page load.
    ...    Maximize the window.
    ...    Wait for curtain duration.
    [Tags]            regression
    # [Timeout]         10 sec
    Run Keywords        KW: Open browser
    KW: Page load time
    KW: Maximize window
    KW: Sleep        5 sec

TC: Search for one way journey
    Run Keyword And Continue On Failure        KW: Element exist      ${pop up image xpath}
    Run Keyword And Continue On Failure        KW: Click              ${close pop up xpath}
    KW: Sleep        5 sec
    Run Keyword And Continue On Failure        KW: Element exist      ${accept cookies xpath}
    Run Keyword And Continue On Failure        KW: Click              ${accept cookies xpath}
    KW: Sleep        5 sec
    Run Keyword And Continue On Failure        KW: Click              ${from field xpath}
    Run Keyword And Continue On Failure        KW: Clear Element Text              ${from field xpath}
    Run Keyword And Continue On Failure        KW: Input Text          ${from field xpath}    Kolkata    True
    Run Keyword And Continue On Failure        KW: Element exist      ${from auto suggestion drop down xpath}
    KW: Sleep        5 sec

TC: Close all the browser
    KW: Close all browsers
