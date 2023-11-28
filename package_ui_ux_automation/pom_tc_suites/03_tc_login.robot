*** Settings ***
Documentation   This setting is for the signup module settings.
Resource        ../setup_teardown/setup_teardown_func.robot
Suite Setup     setup_teardown_func.KW: Launch Browser Common Keyword       ${edge_browser}      ${admincmsurl}       ${flag true}
# Suite Teardown  setup_teardown_func.KW: Browser TearDown
# Suite Teardown  setup_teardown_func.KW: Close all browser TearDown

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

# Test Setup      KW: Maximize the Window.


*** Test Cases ***
TC1: [POSITIVE] [Login page]- organizer login with valid credentials.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    # run keyword and continue on Failure         KW: Pause the execution.
    run keyword and continue on Failure         KW: Edge Return Browser
    run keyword and continue on Failure         KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure         KW: Refresh page.
    run keyword and continue on Failure         KW: To open the workbook to the specified path.
    run keyword and continue on Failure         KW: Interacting with the Excel sheet1.
    run keyword and continue on Failure         KW: Refresh page.
    run keyword and continue on Failure         KW: Read excel for email address.
    run keyword and continue on Failure         KW: Type Text       ${email field}          ${read_email}               ${EMPTY}                ${waiting duration}    ${index}     ${flag true}    ${flag true}
    run keyword and continue on Failure         KW: Type Text       ${password field}       ${admincmsPassword}   ${EMPTY}                ${waiting duration}    ${index}     ${flag true}    ${flag true}
    run keyword and continue on Failure         KW: Click Text      ${login button text}    ${EMPTY}                    ${waiting duration}     ${flag true}    ${flag true}    ${flag true}    #${flag true}
    run keyword and continue on Failure         KW: Fetch org fname, Lname from the excel.
    run keyword and continue on Failure         KW: Verify Text     ${read_fname}           ${EMPTY}                    ${waiting duration}     ${flag true}    ${flag true}
    run keyword and continue on Failure         KW: Click Text      ${read_fname}           ${EMPTY}                    ${waiting duration}     ${flag false}   ${flag true}    ${flag true}    #${flag true}
    run keyword and continue on Failure         KW: Verify All      ${read_fname}, ${read_lname}        ${waiting duration}
    run keyword and continue on Failure         KW: To save & close the workbook to the specified path.