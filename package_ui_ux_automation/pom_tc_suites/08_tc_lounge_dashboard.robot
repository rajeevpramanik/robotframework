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
TC1: [POSITIVE] [Lounge page]- Interaction with lounge addition listing page.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive        lounge
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.
    # run keyword and continue on Failure             KW: Switch to browsers.     ${tab1}
    # run keyword and continue on Failure             KW: Maximize the Browser_Name window.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Hover Element       ${gurupoint logo left side hamburger xpath}    ${waiting duration}     ${index}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Check lounge side module is present or not.
    run keyword and continue on Failure             KW: Click on the lounge module side panel.
    run keyword and continue on Failure             KW: Lounge text and discription is displayed.
    run keyword and continue on Failure             KW: Verify manage slots elemets is present.
    run keyword and continue on Failure             KW: Verify add lounge table button top right is displayed.
    run keyword and continue on Failure             KW: Verify add lounge table button center is displayed.
    run keyword and continue on Failure             KW: Click on add lounge table button on center elements.
    run keyword and continue on Failure             KW: Verify all the elements.
    run keyword and Continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Click on add lounge table button top right elements.
    run keyword and continue on Failure             KW: Verify all the elements.
    run keyword and continue on Failure             KW: Enter Table Name text field is present.
    run keyword and continue on Failure             KW: Enter Table topic text field is present.
    run keyword and continue on Failure             KW: Enter Table priority text field is present.
    run keyword and continue on Failure             KW: Select the capacity seat.
    run keyword and continue on Failure             KW: Add the 256 size lounge image.
    run keyword and continue on Failure             KW: Click on the crop and save button.
    run keyword and continue on Failure             KW: uploaded image success alert.
    run keyword and continue on Failure             KW: Deleting the uploaded image.
    run keyword and continue on Failure             KW: Click on delete button on the popup.
    run keyword and continue on Failure             KW: Add the 256 size lounge image.
    run keyword and continue on Failure             KW: Click on the crop and save button.
    run keyword and continue on Failure             KW: uploaded image success alert.
    run keyword and continue on Failure             KW: Click on the add button.
    run keyword and continue on Failure             KW: Table added alert.
    run keyword and continue on Failure             KW: Verify the lounge name on the listing page.
    run keyword and continue on Failure             KW: Mouse hover upon the created lounge.
    run keyword and continue on Failure             KW: Click on the edit element.
    run keyword and continue on Failure             KW: Select the seat to four.
    run keyword and continue on Failure             KW: Click the save button on the default login code page.
    run keyword and continue on Failure             KW: green success alert for editing the lounge.
