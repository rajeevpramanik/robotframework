*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

# Suite Setup     setup_teardown_func.KW: Launch Browser Common Keyword       ${firefox_browser}      ${admincmsurl}
# Suite Teardown  setup_teardown_func.KW: Browser TearDown
# Suite Teardown  setup_teardown_func.KW: Close all browser TearDown

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

# Test Setup      KW: Maximize the Window.

*** Test Cases ***
TC1: [POSITIVE] [Room page]- Interaction with room addition listing page.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # KW: Pause the execution.
    run keyword and Continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Hover Element       ${gurupoint logo left side hamburger xpath}    ${waiting duration}     ${index}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Verify the room module is present on the left hamburger.
    run keyword and continue on Failure             KW: Hover upon the room module on the left hamburger.
    run keyword and continue on Failure             KW: Click on the room module on the left hamburger.
    run keyword and continue on Failure             KW: Verify the room info are displaying.
    run keyword and continue on Failure             KW: Hover upon the add rooms button on the center of the screen.
    run keyword and continue on Failure             KW: Click on the add rooms button on the center of the screen.
    run keyword and continue on Failure             KW: Verify single add options displaying when clicked the add rooms button or dropdown.
    run keyword and continue on Failure             KW: Verify bulk upload options displaying when clicked the add rooms button or dropdown.
    run keyword and continue on Failure             KW: Hover upon the single add option on the rooms page.
    run keyword and continue on Failure             KW: Hover upon the bulk upload option on the rooms page.
    run keyword and continue on Failure             KW: Click on the bulk upload add button for rooms.
    run keyword and continue on Failure             KW: Room bulk upload side panel texts displaying.
    run keyword and continue on Failure             KW: Verify the room download button for bulk upload is present.
    run keyword and continue on Failure             KW: Click on the download button to export room template.
    run keyword and continue on Failure             KW: Move rooms files from download folder into project folder.
    run keyword and continue on Failure             KW: Fetch only the rooms latest excel sheet download.


TC2: [POSITIVE] [Room page]- Interaction with room excel sheet for bulk upload of room listing page.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
    # Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Read the rooms excel template after downloading.
    run keyword and continue on Failure             KW: Assert the rooms header Fields sheet with all the room data's.


