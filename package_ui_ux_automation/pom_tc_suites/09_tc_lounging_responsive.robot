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
TC1: [POSITIVE] [Setting page]- Save or change the default login code.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    # run keyword and continue on Failure             KW: Pause the execution.
    # run keyword and continue on Failure             KW: Switch to browsers.     ${tab1}
    # run keyword and continue on Failure             KW: Maximize the Browser_Name window.
    # run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    # run keyword and continue on Failure             KW: Refresh page.
    # run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Hover Element       ${gurupoint logo left side hamburger xpath}    ${waiting duration}     ${index}    ${flag true}    ${flag true}
    # run keyword and continue on Failure             KW: Click on the setting module.
    # run keyword and continue on Failure             KW: Click on the vertical tab login option module.
    # run keyword and continue on Failure             KW: Click on the Custom Login Code radio buton.
    # run keyword and continue on Failure             KW: Scroll to the login code element.
    # run keyword and continue on Failure             KW: Type login code for all users.
    # run keyword and continue on Failure             KW: Click the save button on the default login code page.
    # run keyword and continue on Failure             KW: Save success green alert after saving the code.


TC2: [POSITIVE] [webcommunity page]- Interaction with lounge by the uploaded user.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.

    run keyword and continue on Failure             KW: Open new tab.
    run keyword and continue on Failure             KW: Go to the webcommunity site.
    run keyword and continue on Failure             KW: Verify the email id field is present.
    run keyword and continue on Failure             KW: Verify the continue button is present.
    run keyword and continue on Failure             KW: webcommunity cookies, click on accept all element.
    run keyword and continue on Failure             KW: Open people excel.
    run keyword and continue on Failure             KW People excel, switch to sheet Attendee Data
    run keyword and continue on Failure             KW: Interacting with the Excel sheet Attendee Data.
    run keyword and continue on Failure             KW: Read excel for email address.
    run keyword and continue on Failure             KW: Type email id stored on the excelsheet.
    run keyword and continue on Failure             KW: To save & close the workbook to the specified path.
    run keyword and continue on Failure             KW: Click on the continue button.
    run keyword and continue on Failure             KW: Verify the code field is present.
    run keyword and continue on Failure             KW: Verify the verify button is present.
    run keyword and continue on Failure             KW: Type default code.
    run keyword and continue on Failure             KW: Check the i agree checkbox.
    run keyword and continue on Failure             KW: Click on the verify button.
    run keyword and continue on Failure             KW: Wait for the element on the webcommunity page.

TC3: [POSITIVE] [webcommunity On-Boarding page]- Filling data on the on-boarding page.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.

    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Click on the save button on the Select Language & Time zone popup.

TC4: [POSITIVE] [webcommunity Lounge page]- Launch the lounge table on the webcommunity side.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive        lounge
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.

    run keyword and continue on Failure             KW: Click on the lounge module on the top bar webcommunity page.
    run keyword and continue on Failure             KW: Verify the lounge name on the listing page.
    run keyword and continue on Failure             KW: Verify lounge table seat one is present.
    run keyword and continue on Failure             KW: Verify lounge table seat fourth is present.
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Click the lounge table seat one.
    run keyword and continue on Failure             KW: Verify the alert is present or the popup.


TC5: [POSITIVE] [webcommunity Lounge page]- Verify the popups button, options and check the compability test of the system.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive        lounge
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.

    run keyword and continue on Failure             KW: Expect join lounge modal popups.
    run keyword and continue on Failure             KW: Expect the audio button is present.
    run keyword and continue on Failure             KW: Expect the video button is present.
    run keyword and continue on Failure             KW: Expect the test device button is present.
    run keyword and continue on Failure             KW: Expect the join button is present.
    run keyword and continue on Failure             KW: Click on the test device button.
    run keyword and continue on Failure             KW: Check browser compability test.
    run keyword and continue on Failure             KW: Check camera compability test.
    run keyword and continue on Failure             KW: Check Microphone compability test.
    run keyword and continue on Failure             KW: Verify the audio sound section is present.
    run keyword and continue on Failure             KW: Click on the audio play icon to test the sound.
    run keyword and continue on Failure             KW: Click on yes on the speaker compatibility test.
    run keyword and continue on Failure             KW: Check Speaker compability test.
    run keyword and continue on Failure             KW: Check Resolution compability test.
    run keyword and continue on Failure             KW: Check Connectivity compability test.
    run keyword and continue on Failure             KW: compability checking finished alert.
    run keyword and continue on Failure             KW: compability checking finished button text.
    run keyword and continue on Failure             KW: Click on finished button on the modal.
    run keyword and continue on Failure             KW: Click on the join button to join the lounge.
    run keyword and continue on Failure             KW: Expect the leave button is present.
    run keyword and continue on Failure             KW: Minimize the Browser_Name window.


TC6: [POSITIVE] [cms page]- Open other browser to join the 2nd lounge seat.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive        lounge
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.
    run keyword and continue on Failure             KW: Switch to browsers.     ${tab2}
    run keyword and continue on Failure             KW: Maximize the webcommunity_Browser window.
    run keyword and continue on Failure             KW: Go to the webcommunity site.
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Verify the email id field is present.
    run keyword and continue on Failure             KW: Verify the continue button is present.
    run keyword and continue on Failure             KW: Type gmail id saved as a variable.
    run keyword and continue on Failure             KW: Click on the continue button.
    run keyword and continue on Failure             KW: Verify the code field is present.
    run keyword and continue on Failure             KW: Verify the verify button is present.
    run keyword and continue on Failure             KW: Type default code.
    run keyword and continue on Failure             KW: Check the i agree checkbox.
    run keyword and continue on Failure             KW: Click on the verify button.
    run keyword and continue on Failure             KW: Wait for the element on the webcommunity page.

TC7: [POSITIVE] [webcommunity On-Boarding page]- Filling data on the 2nd browser opened on-boarding page.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive        lounge
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.

    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Click on the save button on the Select Language & Time zone popup.

TC8: [POSITIVE] [webcommunity Lounge page]- Launch the lounge table on the 2nd browser webcommunity side.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive        lounge
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.
    run keyword and continue on Failure             KW: Click on the lounge module on the top bar webcommunity page.
    run keyword and continue on Failure             KW: Verify the lounge name on the listing page.
    run keyword and continue on Failure             KW: Verify lounge table seat one is present.
    run keyword and continue on Failure             KW: Verify lounge table seat fourth is present.
    # run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Click the lounge table seat four.

TC9: [POSITIVE] [webcommunity Lounge page]- Verify the popups button, options and check the compability test of the 2nd browser system.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive        lounge
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.

    run keyword and continue on Failure             KW: Expect join lounge modal popups.
    run keyword and continue on Failure             KW: Expect the audio button is present.
    run keyword and continue on Failure             KW: Expect the video button is present.
    run keyword and continue on Failure             KW: Expect the test device button is present.
    run keyword and continue on Failure             KW: Expect the join button is present.
    run keyword and continue on Failure             KW: Click on the test device button.
    run keyword and continue on Failure             KW: Check browser compability test.
    run keyword and continue on Failure             KW: Check camera compability test.
    run keyword and continue on Failure             KW: Check Microphone compability test.
    run keyword and continue on Failure             KW: Verify the audio sound section is present.
    run keyword and continue on Failure             KW: Click on the audio play icon to test the sound.
    run keyword and continue on Failure             KW: Click on yes on the speaker compatibility test.
    run keyword and continue on Failure             KW: Check Speaker compability test.
    run keyword and continue on Failure             KW: Check Resolution compability test.
    run keyword and continue on Failure             KW: Check Connectivity compability test.
    run keyword and continue on Failure             KW: compability checking finished alert.
    run keyword and continue on Failure             KW: compability checking finished button text.
    run keyword and continue on Failure             KW: Click on finished button on the modal.
    run keyword and continue on Failure             KW: Click on the join button to join the lounge.
    run keyword and continue on Failure             KW: Verify the lounge name on the listing page.
    run keyword and continue on Failure             KW: Expect the leave button is present below the lounge table.
    run keyword and continue on Failure             KW: Mouse hover upon the leave element within the lounge.
    run keyword and continue on Failure             KW: Expect the microphone button is present below the lounge table
    run keyword and continue on Failure             KW: Mouse hover the microphone element within the lounge.
    run keyword and continue on Failure             KW: Expect the camera button is present below the lounge table
    run keyword and continue on Failure             KW: Mouse hover the camera element within the lounge.
    run keyword and continue on Failure             KW: Expect the present now button is present below the lounge table
    run keyword and continue on Failure             KW: Mouse hover the present now element within the lounge.
    run keyword and continue on Failure             KW: Expect the switching view button is present below the lounge table
    run keyword and continue on Failure             KW: Mouse hover the switching view element within the lounge.
    run keyword and continue on Failure             KW: Click on the microphone button with in the lounge table below the screen.
    run keyword and continue on Failure             KW: Click on the camera button with in the lounge table below the screen.
    run keyword and continue on Failure             KW: Click on the switching view button with in the lounge table below the screen.
    run keyword and continue on Failure             KW: Verify the fname & lname on the lounge list view manually added.
    run keyword and continue on Failure             KW: Verify the fname & lname on the lounge list view bulk upload added.
    run keyword and continue on Failure             KW: Minimize the webcommunity_Browser window.
    run keyword and continue on Failure             KW: Switch to browsers.     ${tab1}
    run keyword and continue on Failure             KW: Maximize the Browser_Name window.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Expect the leave button is present below the lounge table.
    run keyword and continue on Failure             KW: Mouse hover upon the leave element within the lounge.
    run keyword and continue on Failure             KW: Expect the microphone button is present below the lounge table
    run keyword and continue on Failure             KW: Mouse hover the microphone element within the lounge.
    run keyword and continue on Failure             KW: Expect the camera button is present below the lounge table
    run keyword and continue on Failure             KW: Mouse hover the camera element within the lounge.
    run keyword and continue on Failure             KW: Expect the present now button is present below the lounge table
    run keyword and continue on Failure             KW: Mouse hover the present now element within the lounge.
    run keyword and continue on Failure             KW: Expect the switching view button is present below the lounge table
    run keyword and continue on Failure             KW: Mouse hover the switching view element within the lounge.
    run keyword and continue on Failure             KW: Click on the microphone button with in the lounge table below the screen.
    run keyword and continue on Failure             KW: Click on the camera button with in the lounge table below the screen.
    run keyword and continue on Failure             KW: Click on the switching view button with in the lounge table below the screen.
    run keyword and continue on Failure             KW: Verify the fname & lname on the lounge list view manually added.
    run keyword and continue on Failure             KW: Verify the fname & lname on the lounge list view bulk upload added.
    run keyword and continue on Failure             KW: Switch to browsers.     ${tab2}
    run keyword and continue on Failure             KW: Maximize the webcommunity_Browser window.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    # run keyword and continue on Failure             KW: Switch to browsers.     ${tabnew}
    # run keyword and continue on Failure             KW: Minimize the Browser_Name window.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Click on the leave button with in the lounge table below the screen.
    run keyword and continue on Failure             KW: Verify the lounge leaving permission popup appearence.
    run keyword and continue on Failure             KW: Verify the lounge leaving permission text(Are you sure you want to leave?) appearence on popup.
    run keyword and continue on Failure             KW: Verify the lounge leaving permission text(Leave the Lounge) appearence on popup.
    run keyword and continue on Failure             KW: Verify the lounge leaving permission button appearence on popup.
    run keyword and continue on Failure             KW: Click the lounge leaving permission button appearence on popup.
    run keyword and continue on Failure             KW: Verify alert present after leaving the lounge.
    run keyword and continue on Failure             KW: Verify the lounge name on the listing page.
    run keyword and continue on Failure             KW: Verify lounge table seat one is present.
    run keyword and continue on Failure             KW: Verify lounge table seat fourth is present.
    # run keyword and continue on Failure             KW: Refresh page.
    # run keyword and continue on Failure             KW: Browser TearDown
    run keyword and continue on Failure             KW: Verify the my profile element is present.
    run keyword and continue on Failure             KW: Click the my profile element is present.
    run keyword and continue on Failure             KW: Verify the logout element is present.
    run keyword and continue on Failure             KW: Click the my profile logout option.
    run keyword and continue on Failure             KW: Verify the email id field is present.
    run keyword and continue on Failure             KW: Verify the continue button is present.
    run keyword and continue on Failure             KW: Close current window tab.
    # run keyword and continue on Failure             KW: Condition to verify and validate by saving, accepting or rejecting all webcommunity cookies.

TC10: [POSITIVE] [cms page]- Switch to the cms.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive        lounge
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.
    run keyword and continue on Failure             KW: Switch to browsers.     ${tab1}
    run keyword and continue on Failure             KW: Maximize the Browser_Name window.
    run keyword and continue on Failure             KW: Click on the leave button with in the lounge table below the screen.
    run keyword and continue on Failure             KW: Verify the lounge leaving permission popup appearence.
    run keyword and continue on Failure             KW: Verify the lounge leaving permission text(Are you sure you want to leave?) appearence on popup.
    run keyword and continue on Failure             KW: Verify the lounge leaving permission text(Leave the Lounge) appearence on popup.
    run keyword and continue on Failure             KW: Verify the lounge leaving permission button appearence on popup.
    run keyword and continue on Failure             KW: Click the lounge leaving permission button appearence on popup.
    run keyword and continue on Failure             KW: Verify alert present after leaving the lounge.
    run keyword and continue on Failure             KW: Verify the lounge name on the listing page.
    run keyword and continue on Failure             KW: Verify lounge table seat one is present.
    run keyword and continue on Failure             KW: Verify lounge table seat fourth is present.

