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
TC1: [POSITIVE] [People page]- Interaction with people bulk upload excel and validating.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
    # Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test


    # run keyword and continue on Failure             KW: Pause the execution.
    run keyword and continue on Failure             KW: Switch to browsers.     ${tab1}
    run keyword and continue on Failure             KW: Maximize the Browser_Name window.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Hover Element       ${gurupoint logo left side hamburger xpath}    ${waiting duration}     ${index}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Click on the people module.
    run keyword and continue on Failure             KW: Click upon the ADD PEOPLE button to add people.
    run keyword and continue on Failure             KW: Wait and verify that the Select All check box option is displaying.
    run keyword and continue on Failure             KW: Click the Select All check box to add the attendees.
    run keyword and continue on Failure             KW: Click the Continue button to save the data.
    run keyword and continue on Failure             KW: Wait and verify that the single attendee option is displaying.
    run keyword and continue on Failure             KW: Wait and verify that the Bulk Upload attendee option is displaying.
    run keyword and continue on Failure             KW: Click the Bulk Upload attendee option to perform action.
    # run keyword and continue on Failure             KW: Hover upon the ADD PEOPLE multi dropdown.
    # run keyword and continue on Failure             KW: Click upon the ADD PEOPLE multi dropdown.
    # run keyword and continue on Failure             KW: Hover upon the BULK UPLOAD multi dropdown value.
    # run keyword and continue on Failure             KW: Click upon the BULK UPLOAD multi dropdown value.
    run keyword and continue on Failure             KW: Side panel exists or not.
    run keyword and continue on Failure             KW: Click the select dropdown to select the people option button to save the data.
    run keyword and continue on Failure             KW: Verify dropdown values.
    run keyword and continue on Failure             KW: Click on the Attendees value on the dropdown.
    run keyword and continue on Failure             KW: Click on the download button.
    # run keyword and continue on Failure             Verify File Download
    run keyword and continue on Failure             KW: Move files from download folder into project folder.
    run keyword and continue on Failure             KW: Fetch only the latest excel sheet download.
    run keyword and continue on Failure             KW: Read the people excel template after downloading.
    run keyword and continue on Failure             KW: Assert the Matchmaking Fields (Read Only) sheet with all the data's.
    run keyword and continue on Failure             KW: To save & close the workbook to the specified path.
    run keyword and continue on Failure             KW: Assert the Attendee Data. sheet with all the data's.
    run keyword and continue on Failure             KW: Writing/Adding single row data to the people excel sheet.
    run keyword and continue on Failure             KW: Upload people excel sheet.
    run keyword and continue on Failure             KW: Verify the green success alert after uploading the people excelsheet.
    run keyword and continue on Failure             KW: Click on ADD button.
    run keyword and continue on Failure             KW: Verify the green success alert after uploading the people excelsheet and clicking the add button.
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Read the last row of the people excel sheet and assert on the cms people list.


TC2: [POSITIVE] [People page]- Interaction with people manual addition and validating.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.

    run keyword and continue on Failure             KW: Click upon the ADD PEOPLE button to add people.
    run keyword and continue on Failure             KW: Wait and verify that the Select All check box option is displaying.
    # run keyword and continue on Failure             KW: Click the Select All check box to add the attendees.
    run keyword and continue on Failure             KW: Click the Continue button to save the data.
    run keyword and continue on Failure             KW: Wait and verify that the single attendee option is displaying.
    run keyword and continue on Failure             KW: Wait and verify that the Bulk Upload attendee option is displaying.
    run keyword and continue on Failure             KW: Click the Single Add attendee option to perform action.
    # run keyword and continue on Failure             KW: Hover upon the ADD PEOPLE multi dropdown.
    # run keyword and continue on Failure             KW: Click upon the ADD PEOPLE multi dropdown.
    # run keyword and continue on Failure             KW: Hover upon the Single Add multi dropdown value.
    # run keyword and continue on Failure             KW: Click upon the Single Add multi dropdown value.
    run keyword and continue on Failure             KW: Enter attendees fname.
    run keyword and continue on Failure             KW: Enter attendees lname.
    run keyword and continue on Failure             KW: Enter attendees email.
    run keyword and continue on Failure             KW: Select male as a gender.
    run keyword and continue on Failure             KW: Enter attendees about info.
    run keyword and continue on Failure             KW: Enter attendees designation.
    run keyword and continue on Failure             KW: Click the sender email or invite email checkbox.
    run keyword and continue on Failure             KW: Click on ADD button.
    run keyword and continue on Failure             KW: Verify the green success alert after adding the single people.
    run keyword and continue on Failure             KW: Verify the fname, lname and the email entered manually.

TC3: [POSITIVE] [People page]- Interaction with people manual addition and try validating for webcommunity branding.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.

    # run keyword and continue on Failure             KW: Hover upon the ADD PEOPLE multi dropdown.
    # run keyword and continue on Failure             KW: Click upon the ADD PEOPLE multi dropdown.
    # run keyword and continue on Failure             KW: Hover upon the Single Add multi dropdown value.
    # run keyword and continue on Failure             KW: Click upon the Single Add multi dropdown value.
    run keyword and continue on Failure             KW: Click upon the ADD PEOPLE button to add people.
    run keyword and continue on Failure             KW: Wait and verify that the Select All check box option is displaying.
    # run keyword and continue on Failure             KW: Click the Select All check box to add the attendees.
    run keyword and continue on Failure             KW: Click the Continue button to save the data.
    run keyword and continue on Failure             KW: Wait and verify that the single attendee option is displaying.
    run keyword and continue on Failure             KW: Wait and verify that the Bulk Upload attendee option is displaying.
    run keyword and continue on Failure             KW: Click the Single Add attendee option to perform action.
    run keyword and continue on Failure             KW: Enter attendees fname for branding verification.
    run keyword and continue on Failure             KW: Enter attendees lname for branding verification.
    run keyword and continue on Failure             KW: Enter attendees email for branding verification.
    run keyword and continue on Failure             KW: Select male as a gender.
    run keyword and continue on Failure             KW: Enter attendees about info.
    run keyword and continue on Failure             KW: Enter attendees designation.
    run keyword and continue on Failure             KW: Click the sender email or invite email checkbox.
    run keyword and continue on Failure             KW: Click on ADD button.
    run keyword and continue on Failure             KW: Verify the green success alert after adding the single people.