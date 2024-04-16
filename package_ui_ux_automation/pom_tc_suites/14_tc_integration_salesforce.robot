*** Settings ***
Documentation   This setting is for creating cardings and purchasing.

Resource        ../setup_teardown/setup_teardown_func.robot

# Suite Setup     setup_teardown_func.KW: Launch Browser Common Keyword       ${firefox_browser}      ${admincmsurl}
# Suite Teardown  setup_teardown_func.KW: Browser TearDown
Suite Teardown  setup_teardown_func.KW: Close all browser TearDown

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

# Test Setup      KW: Maximize the Window.


*** Test Cases ***
TC1: [POSITIVE] [integration]- Click the integration module on the top and validate the icon and info.
    [Documentation]     This tc's is going perform delete operation for all the created place.
    [Tags]              positive
    # Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Hover upon the top multi grid item integration module.
    run keyword and continue on Failure             KW: Click on the top multi grid item integration module.
    run keyword and continue on Failure             KW: Verify the Sales & Marketing tab panel.
    run keyword and continue on Failure             KW: Verify the All tab panel.
    run keyword and continue on Failure             KW: Click the Sales & Marketing tab panel.
    run keyword and continue on Failure             KW: Verify the salesforce multi box frame is present.
    run keyword and continue on Failure             KW: Varify the salesforce icon/logo on the salesforce multi box frame is present.
    run keyword and continue on Failure             KW: Second verification on the salesforce icon/logo on the salesforce multi box frame is present.
    run keyword and continue on Failure             KW: Verify the salesforce text present on the multi box frame.
    run keyword and continue on Failure             KW: Verify the salesforce info present on the multi box frame.
    run keyword and continue on Failure             KW: Verify the salesforce connect button text present on the multi box frame.
    run keyword and continue on Failure             KW: Verify the salesforce How it works? button text present on the multi box frame.
    run keyword and continue on Failure             KW: Verify the connect button on the salesforce multi box frame is present.
    run keyword and continue on Failure             KW: Verify the How it works? button on the salesforce multi box frame is present.
    run keyword and continue on Failure             KW: Verify the All tab panel.
    run keyword and continue on Failure             KW: Verify the salesforce multi box frame is present.
    run keyword and continue on Failure             KW: Varify the salesforce icon/logo on the salesforce multi box frame is present.
    run keyword and continue on Failure             KW: Second verification on the salesforce icon/logo on the salesforce multi box frame is present.
    run keyword and continue on Failure             KW: Verify the salesforce text present on the multi box frame.
    run keyword and continue on Failure             KW: Verify the salesforce info present on the multi box frame.
    run keyword and continue on Failure             KW: Verify the salesforce connect button text present on the multi box frame.
    run keyword and continue on Failure             KW: Verify the salesforce How it works? button text present on the multi box frame.
    run keyword and continue on Failure             KW: Verify the connect button on the salesforce multi box frame is present.
    run keyword and continue on Failure             KW: Verify the How it works? button on the salesforce multi box frame is present.
    run keyword and continue on Failure             KW: Click the How it works? button on the salesforce multi box frame is present.
    run keyword and continue on Failure             KW: Sleep Mode          ${sleep seconds}
    run keyword and continue on Failure             KW: Get the How it works? url and compare.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Click the connect button on the salesforce multi box frame is present.
    # run keyword and continue on Failure  

TC2: [POSITIVE] [integration]- Click the connect button and perform action on the side panel to validate the icon and info.
    [Documentation]     This tc's is going perform delete operation for all the created place.
    [Tags]              positive
    # Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Verify the sidepanel upon clicking the connect button is opening.   
    run keyword and continue on Failure             KW: Verify the side panel header Integrate with Salesforce is present.
    run keyword and continue on Failure             KW: Condition to check the gurupoint+salesforce icon/logo and validate the icon/logo.
    run keyword and continue on Failure             KW: To verify the side panel note.
    run keyword and continue on Failure             KW: To verify info below the note on the sidepanel.
    run keyword and continue on Failure             KW: To verify the INTEGRATIONS text is displayed.
    run keyword and continue on Failure             KW: To verify the info below the INTEGRATIONS header.
    run keyword and continue on Failure             KW: To verify the Connect with Salesforce header text is displayed.
    run keyword and continue on Failure             KW: To verify the info below the Connect with Salesforce header.
    run keyword and continue on Failure             KW: Verify the connect button on the sidepanel is present.
    run keyword and continue on Failure             KW: Verify the connect button text on the sidepanel is present.
    run keyword and continue on Failure             KW: Click the connect button on the sidepanel is present.
    run keyword and continue on Failure             KW: Verify the salesforce authenticate iframe is present upon clicking the connect.

TC3: [POSITIVE] [integration]- Salesforce authentication and linking to cms.
    [Documentation]     This tc's is going perform delete operation for all the created place.
    [Tags]              positive
    # Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Verify the Salesforce authentication iframe text is present.
    run keyword and continue on Failure             KW: Verify the Salesforce New authentication iframe text is present.
    run keyword and continue on Failure             KW: Verify the Salesforce cancel iframe text is present.
    run keyword and continue on Failure             KW: Click the Salesforce New authentication iframe text is present.
    # run keyword and continue on Failure             KW: Click the Salesforce cancel iframe text is present.
    run keyword and continue on Failure             KW: Verify the Salesforce Create a new authentication iframe text is present.
    run keyword and continue on Failure             KW: Verify the Salesforce Your authentication name iframe text is present.
    run keyword and continue on Failure             KW: Verify the Salesforce Salesforce instance type iframe text is present.
    run keyword and continue on Failure             KW: Verify the Salesforce Create iframe text is present.
    run keyword and continue on Failure             KW: Click the Salesforce Create iframe text is present.
    run keyword and continue on Failure             KW: Switch to browsers.     ${tabnew}
    run keyword and continue on Failure             KW: Maximize the Window.
    run keyword and continue on Failure             KW: Verify the salesforce official login page Username label text is present.
    run keyword and continue on Failure             KW: Verify the salesforce official login page Password label label text is present.
    