*** Settings ***
Documentation   This setting is for creating cardings and purchasing.

Resource        ../setup_teardown/setup_teardown_func.robot

# Suite Setup     setup_teardown_func.KW: Launch Browser Common Keyword       ${firefox_browser}      ${admincmsurl}
# Suite Teardown  setup_teardown_func.KW: Browser TearDown
# Suite Teardown  setup_teardown_func.KW: Close all browser TearDown

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

# Test Setup      KW: Maximize the Window.


*** Test Cases ***
TC1: [POSITIVE] [place page]- Delete all the place.
    [Documentation]     This tc's is going perform delete operation for all the created place.
    [Tags]              positive
    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # KW: Pause the execution.
    run keyword and continue on Failure             KW: Refresh page.
    