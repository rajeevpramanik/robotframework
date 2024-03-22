*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot




# Suite Setup     setup_teardown_func.KW: Launch Browser Common Keyword       ${firefox_browser}      ${admincmsurl}      ${flag false}
# Suite Teardown  setup_teardown_func.KW: Browser TearDown
# Suite Teardown  setup_teardown_func.KW: Close all browser TearDown

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

# Test Setup      KW: Maximize the Window.


*** Test Cases ***
TC1: [POSITIVE] [Integration page]- Interaction with sso module.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # KW: Pause the execution.

    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Hover upon the top multi grid item integration module.
    run keyword and continue on Failure             KW: Click on the top multi grid item integration module.
    run keyword and continue on Failure             KW: Scroll to the sso element section.
    run keyword and continue on Failure             KW: Verifying the sso security icon visibility.
    run keyword and continue on Failure             KW: Get the sso icon using qweb get icon.
    run keyword and continue on Failure             KW: Expect the sso section element is enabled and displayed.
    run keyword and continue on Failure             KW: Expect the sso section element text is displayed.
    run keyword and continue on Failure             KW: Hover upon the sso section element.
    run keyword and continue on Failure             KW: Click on the connect button within the sso section.
    run keyword and continue on Failure             KW: Verifying the gurupoint plus the sso icon visibility.
    run keyword and continue on Failure             KW: Expect the sso side panel has text displayed.
    run keyword and continue on Failure             KW: Enter the details below to proceed text is displayed.
    run keyword and continue on Failure             KW: Expected the sso side panel, organization filed is visible.
    run keyword and continue on Failure             KW: Expected the sso side panel, organization domain name filed is visible.
    run keyword and continue on Failure             KW: Expected the sso side panel, connect button is in disable mode and visible.
    run keyword and continue on Failure             KW: Expected the sso side panel, cancel button is in enabled mode and visible.
    run keyword and continue on Failure             KW: Click the org name field.
    run keyword and continue on Failure             KW: Enter organizer name from the excel.
    run keyword and continue on Failure             KW: Click the org domain name field.
    run keyword and continue on Failure             KW: Enter organizer domain name and save it to the excel.
    run keyword and continue on Failure             KW: Expected the sso side panel, connect button is in enabled mode and visible.
    run keyword and continue on Failure             KW: Click on the active connect button.


TC2: [POSITIVE] [Integration page]- Selecting SSO Vendor with Sikuli.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
    # Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Start SIKULI SERVER Process.
    run keyword and continue on Failure             KW: Select google from the workos site using Sikuli.
    run keyword and continue on Failure             setup_teardown_func.KW: Sleep Mode         ${sleep seconds}
    run keyword and continue on Failure             KW: Stop SIKULI SERVER Process.


TC3: [POSITIVE] [Integration page]- Switching from sso tab to cms tab and vice versa.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
    # Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}


TC4: [POSITIVE] [Integration page]- Click on the get started button on the workos page.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
    # Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Click on workos get started button.
    run keyword and continue on Failure             KW: Click on workos confirm button.
    run keyword and continue on Failure             KW: Close current window tab.
    run keyword and continue on Failure             KW: Close current window tab.


TC4: [POSITIVE] [Integration page]- Verifying the connected, gearbox, disconnect, org name & domain name.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Scroll to the sso element section.
    run keyword and continue on Failure             KW: Assert the green conection icon.
    run keyword and continue on Failure             KW: Verify the green connected element is present.
    run keyword and continue on Failure             KW: Assert the gearbox icon.
    run keyword and continue on Failure             KW: Verify the gearbox element is present.
    run keyword and continue on Failure             KW: Assert the connected word is displaying.
    run keyword and continue on Failure             KW: Click on the gearbox icon.
    run keyword and continue on Failure             KW: Assert the side panel sso connect, disconnect and details.
    run keyword and continue on Failure             KW: Assert the connected word is displaying.
    run keyword and continue on Failure             KW: Verify the green connected element is present on the side panel.
    run keyword and continue on Failure             KW: Assert the disconnected word is displaying.
    run keyword and continue on Failure             KW: Verify the disconnected element is present on the side panel.
    run keyword and continue on Failure             KW: Assert the configuration and connection title is displayed.
    run keyword and continue on Failure             KW: Assert the org name, domain along with the excel sheet.

TC5: [POSITIVE] [Integration page]- Disconnecting the sso and verifying the alert and Switching back to cms.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Click on the disconnect element.
    run keyword and continue on Failure             KW: Wait for the popup to appears and there cancel & confirm elements to be visible.
    run keyword and continue on Failure             KW: Asserting the sso popup connection icon.
    run keyword and continue on Failure             KW: Verify cancel and confirm text on the popup
    run keyword and continue on Failure             KW: Click on the popup cancel button.
    run keyword and continue on Failure             KW: Click on the gearbox icon.
    run keyword and continue on Failure             KW: Click on the disconnect element.
    run keyword and continue on Failure             KW: Click on the popup confirm button.
    run keyword and continue on Failure             KW: Success alert for Disconnecting.

TC6: [POSITIVE] [Integration page]- Reconnectin the sso and verifying the alert and Switching back to cms.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Click on the connect button within the sso section.
    run keyword and continue on Failure             KW: Verifying the gurupoint plus the sso icon visibility.
    run keyword and continue on Failure             KW: Expect the sso side panel has text displayed.
    run keyword and continue on Failure             KW: Verify the element has support text and email ids.
    run keyword and continue on Failure             KW: Assert the org name, domain along with the excel sheet.
    run keyword and continue on Failure             KW: Verify the connect element is enabled and displayed.
    run keyword and continue on Failure             KW: Click on the reconnect button.
    run keyword and continue on Failure             KW: Sleep Mode           ${sleep seconds}
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Success alert for Connecting.
    run keyword and continue on Failure             KW: Sleep Mode           ${sleep seconds}
    run keyword and continue on Failure             KW: Close all windows except the current one.
    run keyword and continue on Failure             KW: Refresh page.