*** Settings ***
Documentation   This setting is for the cookie module verification and validations.

Resource        ../setup_teardown/setup_teardown_func.robot


# Suite Setup     setup_teardown_func.KW: Launch Browser Common Keyword       ${firefox_browser}      ${admincmsurl}
# Suite Teardown  setup_teardown_func.KW: Browser TearDown
# Suite Teardown  setup_teardown_func.KW: Close all browser TearDown

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

Test Setup      KW: Maximize the Window.

*** Test Cases ***
TC1:[POSITIVE] [Login page: Cookie]- compare the event cms banner image with the stored image.
    [Documentation]     This tc's in the login page will validate the cookie feature on the cms.
    [Tags]              negative
    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    
    # KW: Pause the execution.
    Run Keyword And Continue On Failure     KW: Verify the cookies panel close option.
    Run Keyword And Continue On Failure     KW: Click the cookies panel close option.
    Run Keyword And Continue On Failure     KW: Verify the Cookie option element presence.
    Run Keyword And Continue On Failure     KW: Click on the Cookie option element.
    Run Keyword And Continue On Failure     KW: Verify the cookies info.
    Run Keyword And Continue On Failure     KW: Verify Cookie policy text.
    Run Keyword And Continue On Failure     KW: Verify Cookie policy links.
    Run Keyword And Continue On Failure     KW: Browser Backward
    Run Keyword And Continue On Failure     KW: Verify Storage Preferences text.
    Run Keyword And Continue On Failure     KW: Click on the Reject All button
    Run Keyword And Continue On Failure     KW: Verify the green success alert after save, accept or reject.
    Run Keyword And Continue On Failure     KW: Verify the Cookie option element presence.
    Run Keyword And Continue On Failure     KW: Click on the Cookie option element.
    Run Keyword And Continue On Failure     KW: Click on Analytics Toogle button.
    Run Keyword And Continue On Failure     KW: Click on the Save button
    Run Keyword And Continue On Failure     KW: Verify the green success alert after save, accept or reject.
    Run Keyword And Continue On Failure     KW: Verify the Cookie option element presence.
    Run Keyword And Continue On Failure     KW: Click on the Cookie option element.
    Run Keyword And Continue On Failure     KW: Click on the Accept All button
    Run Keyword And Continue On Failure     KW: Verify the green success alert after save, accept or reject.

