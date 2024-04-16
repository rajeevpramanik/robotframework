*** Settings ***
Documentation   This setting is for deleting all the place for this organizer.

Resource        ../setup_teardown/setup_teardown_func.robot

# Suite Setup     setup_teardown_func.KW: Launch Browser Common Keyword       ${firefox_browser}      ${admincmsurl}
# Suite Teardown  setup_teardown_func.KW: Browser TearDown
Suite Teardown  setup_teardown_func.KW: Close all browser TearDown

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

# Test Setup      KW: Maximize the Window.


*** Test Cases ***
TC1: [POSITIVE] [place page]- Delete all the place.
    [Documentation]     This tc's is going perform delete operation for all the created place.
    [Tags]              positive
    # Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # KW: Pause the execution.
    run keyword and continue on Failure             KW: Switch to browsers.     ${tab1}
    run keyword and continue on Failure             KW: Maximize the Browser_Name window.   ${return_edge_browser}
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Hover Element       ${gurupoint logo left side hamburger xpath}    ${waiting duration}     ${index}    ${flag true}    ${flag true}
    Run Keyword                                     KW: Set Config Visibility   ${flag true}
    run keyword and continue on Failure             KW: Click Element   ${top multi grid item place element xpath}     ${waiting duration}     ${flag false}    ${index}    ${flag true}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Delete all place.