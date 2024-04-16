*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

# Suite Setup     setup_teardown_func.KW: Launch Browser Common Keyword       ${firefox_browser}      ${admincmsurl}      ${flag false}
# Suite Teardown  setup_teardown_func.KW: Browser TearDown
# Suite Teardown  setup_teardown_func.KW: Close all browser TearDown

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

Test Setup      KW: Maximize the Window.


*** Test Cases ***
TC1: [POSITIVE] [Onboarding page]- Starting the free trial.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # KW: Pause the execution.

    run keyword and continue on Failure         KW: Click on the How many place do you host in a year? *
    run keyword and continue on Failure         KW: Select value from the How many place do you host in a year? * drop down.

    run keyword and continue on Failure         KW: Click on the How many attendees visit your place? *
    run keyword and continue on Failure         KW: Select value from the How many attendees visit your place? * drop down.

    run keyword and continue on Failure         KW: Click on the Select the type of your Organisation? *
    run keyword and continue on Failure         KW: Select value from the Select the type of your Organisation? * drop down.

    run keyword and continue on Failure         KW: Click on the Select the Country *
    run keyword and continue on Failure         KW: Select value from the Select the Country * drop down.

    run keyword and continue on Failure         KW: Click on the start free trial button.

    run keyword and continue on Failure         KW: Verify the free trial grid element and text is enabled and displayed.