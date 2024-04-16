*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

# Suite Setup     setup_teardown_func.KW: Launch Browser Common Keyword       ${firefox_browser}      ${admincmsurl}      ${flag false}
# Suite Teardown  setup_teardown_func.KW: Browser TearDown
Suite Teardown  setup_teardown_func.KW: Close all browser TearDown

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

Test Setup      KW: Maximize the Window.
# Test Setup      Skip

*** Test Cases ***
TC1: [POSITIVE] [place page]- Interaction with event listing page.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Is Text     ${create new event text}    ${waiting duration}
    run keyword and continue on Failure             KW: Expect texts on the place page.

TC2: [POSITIVE] [place page]- Interaction with creating event side panel.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Is Text     ${create new event text}    ${waiting duration}
    Run Keyword                                     KW: Set Config Visibility           ${flag true}
    run keyword and continue on Failure             KW: Click on the button New Event.
    run keyword and continue on Failure             KW: Enter event name.
    run keyword and continue on Failure             KW: Enter event description.
    run keyword and continue on Failure             KW: Verify internal event type option displaying.
    run keyword and continue on Failure             KW: Click internal event type option displaying.
    run keyword and continue on Failure             KW: Verify the radios present within the internal event.
    run keyword and continue on Failure             KW: Verify external event type option displaying.
    run keyword and continue on Failure             KW: Click external event type option displaying.
    run keyword and continue on Failure             KW: Verify the radios present within the external event.
    run keyword and continue on Failure             KW: If event type is internal, pick random internal radio value else external radio value.
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Scroll To       ${time zone text}       ${event start date text}       ${none}     ${none}     ${waiting duration}
    run keyword and continue on Failure             KW: Click Element                   ${timezone dropdown xpath}   ${waiting duration}     ${flag true}    ${index}    ${flag true}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Search for the timezone from the list.
    run keyword and continue on Failure             KW: Click Text                      ${The final value from the list is}    ${EMPTY}     ${waiting duration}     ${flag true}    ${flag true}    ${flag true}    #${flag true}
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Scroll To       ${event start date text}       ${event end date text}       ${none}     ${none}     ${waiting duration}
    run keyword and continue on Failure             KW: Click Element                   ${event start date and time xpath}   ${waiting duration}     ${flag true}    ${index}    ${flag true}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Sleep Mode                      ${sleep seconds}
    run keyword and continue on Failure             KW: Pick event start date.
    run keyword and continue on Failure             KW: Sleep Mode                      ${sleep seconds}
    run keyword and continue on Failure             KW: Set event start time & start min.
    run keyword and continue on Failure             KW: Sleep Mode                      ${sleep seconds}
    run keyword and continue on Failure             KW: Set AM/PM
    run keyword and continue on Failure             KW: Sleep Mode                      ${sleep seconds}
    run keyword and continue on Failure             KW: Click on the Event End Date text, just above the date picker.
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Click Element      ${event end date and tine xpath}    ${waiting duration}     ${flag true}    ${index}    ${flag true}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Sleep Mode                      ${sleep seconds}
    run keyword and continue on Failure             KW: Pick event end date.
    run keyword and continue on Failure             KW: Sleep Mode                      ${sleep seconds}
    run keyword and continue on Failure             KW: Set event end time & end min.
    run keyword and continue on Failure             KW: Sleep Mode                      ${sleep seconds}
    run keyword and continue on Failure             KW: Entering social links.
    run keyword and continue on Failure             KW: Enter linkedin links.
    run keyword and continue on Failure             KW: Enter twitter links.
    run keyword and continue on Failure             KW: Enter facebook links.
    run keyword and continue on Failure             KW: Enter instagram links.

TC3: [POSITIVE] [place page]- Interaction with Language Settings event side panel and creating the event.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    run keyword and continue on Failure             KW: Click Text      ${Create text}    ${Cancel text}    ${waiting duration}     ${flag true}    ${flag true}    ${flag true}    #${flag true}
    run keyword and continue on Failure             KW: Verify the green success alert after creating the event.
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Hover Element       ${gurupoint logo left side hamburger xpath}    ${waiting duration}     ${index}    ${flag true}    ${flag true}

TC4: [POSITIVE] [Overview page]- Interaction with overview module for coping the event url and turning event live.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Hover Element       ${gurupoint logo left side hamburger xpath}    ${waiting duration}     ${index}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Click on the overview module.
    run keyword and continue on Failure             KW: Click to publish event.
    run keyword and continue on Failure             KW: Assert the popup text and click on GO LIVE.
    run keyword and continue on Failure             KW: Verify green success alert for event live.
    run keyword and continue on Failure             KW: Click to unpublish event.
    run keyword and continue on Failure             KW: Assert the popup text and click on UNPUBLISH.
    run keyword and continue on Failure             KW: Verify green success alert for event unpublish.
    run keyword and continue on Failure             KW: Click to publish event.
    run keyword and continue on Failure             KW: Assert the popup text and click on GO LIVE.
    run keyword and continue on Failure             KW: Sleep Mode                      ${sleep seconds}
    run keyword and continue on Failure             KW: Copy the event url.
    run keyword and continue on Failure             KW: Refresh page.

TC5: [POSITIVE] [Setting page]- Save or change the default login code on the cms.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Hover Element       ${gurupoint logo left side hamburger xpath}    ${waiting duration}     ${index}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Click on the setting module.
    run keyword and continue on Failure             KW: Click on the vertical tab login option module.
    run keyword and continue on Failure             KW: Scroll to the login code element.
    run keyword and continue on Failure             KW: Type login code for all users.
    run keyword and continue on Failure             KW: Click the save button on the default login code page.
    run keyword and continue on Failure             KW: Save success green alert after saving the code.
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Minimize the Browser_Name window.       ${return_edge_browser}

TC6: [POSITIVE] [Overview page]- Open browser for verification and validation.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive        lounge
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    run keyword and continue on Failure             KW: Launch Browser Common Keyword       ${firefox_browser}           ${event webcommunity url}     ${flag false}
    run keyword and continue on Failure             KW: Firefox Return Browser       
    run keyword and continue on Failure             KW: Verify the email id field is present.
    run keyword and continue on Failure             KW: Verify the continue button is present.
    run keyword and continue on Failure             KW: Condition to verify and validate by saving, accepting or rejecting all webcommunity cookies.
    run keyword and continue on Failure             KW: Minimize the Browser_Name window.   ${return_firefox_browser}