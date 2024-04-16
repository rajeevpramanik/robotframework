*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

#Suite Setup     setup_teardown_func.KW: Launch Browser Common Keyword       ${chrome_browser}       ${event webcommunity url}
#Suite Teardown  setup_teardown_func.KW: Browser TearDown
# Suite Teardown  setup_teardown_func.KW: Close all browser TearDown

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

# Test Setup      KW: Maximize the Window.


*** Test Cases ***
TC1: [POSITIVE] [place page]- Interaction with event listing page.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Hover Element       ${gurupoint logo left side hamburger xpath}    ${waiting duration}     ${index}    ${flag true}    ${flag true}
    # run keyword and continue on Failure             KW: Click on the setting module.
    # run keyword and continue on Failure             KW: Click on the vertical tab login option module.

    run keyword and continue on Failure             KW: Verify webcommunity sso login element is present.
    run keyword and continue on Failure             KW: Click on the sso login element.

    run keyword and continue on Failure             KW: Verify webcommunity sso login google email element is present.
    run keyword and continue on Failure             KW: Type email on the google workos email field.

    run keyword and continue on Failure             KW: Click the next button on the google workos page after entering the email id.
    run keyword and continue on Failure             KW: Type password on the google workos email field.
    run keyword and continue on Failure             KW: Click the next button on the google workos page after entering the password id.

    run keyword and continue on Failure             KW: Wait for the element on the webcommunity page.
    run keyword and continue on Failure             KW: Click on the webcommunity logout element.
    run keyword and continue on Failure             KW: Verify webcommunity sso login element is present.