*** Settings ***
Documentation   This setting is for the signup module testing.
Resource        ../setup_teardown/setup_teardown_func.robot

Suite Setup     KW: Browser Invokes SetUp first_browser_name.
Suite Teardown  KW: Browser TearDown
# Suite Teardown  KW: Close all browser TearDown
# Test Setup          Start Sikuli Process
# Test Teardown       Stop Remote Server

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

Test Setup      KW: Maximize the Window.

*** Test Cases ***
TC1: Signup page- compare the page with image with SIKULI and perform some check on validation.
    [Documentation]     This TC: Signup page- compare the page with image with SIKULI and perform some check on validation.
    ...     Email field and the submit button.
    [Tags]               negative
#    Skip                Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # KW: Sleep Mode
    Run Keyword And Continue On Failure     KW: Verify the signup email field is present and verified by the stored image.
    Run Keyword And Continue On Failure     KW: Verify email field displayed and enabled.
    Run Keyword And Continue On Failure     KW: Signup page, email field clicking.
    Run Keyword And Continue On Failure     KW: Verify submit button displayed and enabled.
    Run Keyword And Continue On Failure     KW: Signup page, submit button clicking.
    Run Keyword And Continue On Failure     KW: Assert the empty email field alert text.
    Run Keyword And Continue On Failure     KW: Refresh page.
    Run Keyword And Continue On Failure     KW: Faker invalid emailids.
    Run Keyword And Continue On Failure     KW: Assert the invalid enter of email to the field with alert text.
    Run Keyword And Continue On Failure     KW: Refresh page.
    Run Keyword And Continue On Failure     KW: Faker invalid number emailids.
    # Run Keyword And Continue On Failure     KW: Compare signup page, email field & submit button using SIKULI.


TC2: Signup page- email field and submit button with valid EMAIL data.
    [Documentation]     This TC: email field and submit button with valid data.
    [Tags]              positive
#    Skip                Skipping tc's.
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test
    
    # setup_teardown_func.KW: Sleep Mode
    Run Keyword And Continue On Failure     KW: Refresh page.
    Run Keyword And Continue On Failure     KW: To open the workbook to the specified path.
    Run Keyword And Continue On Failure     KW: Interacting with the Excel sheet1.
    Run Keyword And Continue On Failure     KW: Signup page, email field clicking.
    Run Keyword And Continue On Failure     KW: Create email & save to excel using Faker.
    Run Keyword And Continue On Failure     KW: Enter valid email address on the email field.
    Run Keyword And Continue On Failure     KW: To save & close the workbook to the specified path.
    Run Keyword And Continue On Failure     KW: Signup page, submit button clicking.


TC3: Signup page- fetch username and password and save to excel sheet.
    [Documentation]     This TC: fetch username and password and save to excel sheet.
    [Tags]              positive
#    Skip                Skipping the test case
#   Pass Execution      Passing the test case   deprecated	-regression
#   Fail                Failing the text case   Deprecated  Smoke Test

    Run Keyword And Continue On Failure     KW: To open the workbook to the specified path.
    Run Keyword And Continue On Failure     KW: Interacting with the Excel sheet1.
    Run Keyword And Continue On Failure     KW: Fetch username after sign up.
    Run Keyword And Continue On Failure     KW: Fetch password after sign up.
    Run Keyword And Continue On Failure     KW: To save & close the workbook to the specified path.
    Run Keyword And Continue On Failure     KW: Verifying app or image of the screenshot alert of user login details.
    Run Keyword And Continue On Failure     KW: Verify all the text present on the Access details to demo site.
    