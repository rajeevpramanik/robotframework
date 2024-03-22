*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot


# Suite Setup     setup_teardown_func.KW: Launch Browser Common Keyword       ${firefox_browser}      ${admincmsurl}      ${flag true}
# Suite Teardown  setup_teardown_func.KW: Browser TearDown
# Suite Teardown  setup_teardown_func.KW: Close all browser TearDown

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

# Test Setup      KW: Maximize the Window.


*** Test Cases ***
# TC1:[POSITIVE] [Login page]- compare the event cms banner image with the stored image.
#     [Documentation]     This tc's in the login page will compare the event cms banner image with the stored image.
#     [Tags]              visual
#     Skip     Skipping the test case
# #    Pass Execution      Passing the test case   deprecated	-regression
# #    Fail                Failing the text case   Deprecated  Smoke Test
    
#     # KW: Pause the execution.
#     Run Keyword And Continue On Failure     KW: Check login image is displaying.


# TC2: [POSITIVE] [Login page]- "CREATE AN ACCOUNT" verification and validation with redirecting.
#     [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
#     [Tags]              positive
#     Skip     Skipping the test case
# #    Pass Execution      Passing the test case   deprecated	-regression
# #    Fail                Failing the text case   Deprecated  Smoke Test
    

#     Run Keyword And Continue On Failure     KW: Verify "CREATE AN ACCOUNT" element is displayed and enabled.
#     run keyword and Continue on Failure     KW: Verify "CREATE AN ACCOUNT" element text matches.
#     Run Keyword And Continue On Failure     KW: Verify clicking "CREATE AN ACCOUNT" element is redirecting to sign up page.


# TC3:[POSITIVE] [Signup page]- compare the event cms banner image with the stored image.
#     [Documentation]     This tc's in the signup page will compare the event cms banner image with the stored image.
#     [Tags]              visual
#     Skip     Skipping the test case
# #    Pass Execution      Passing the test case   deprecated	-regression
# #    Fail                Failing the text case   Deprecated  Smoke Test

#     run keyword and continue on Failure     KW: Check signup image is displaying.

# TC4:[NEGATIVE] [Signup page]- verifying the validation alerts for all the fields.
#     [Documentation]     This tc's in the Signup page will compare the page with image with SIKULI and perform some check on validation.
#     [Tags]              negative
#     Skip     Skipping the test case
# #    Pass Execution      Passing the test case   deprecated	-regression
# #    Fail                Failing the text case   Deprecated  Smoke Test

#     run keyword and Continue on Failure         KW: Verify the sign up elements are displayed using locators.

#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and Continue on Failure         KW: Verify email field alert text.
#     run keyword and Continue on Failure         KW: Verify fname field alert text.
#     run keyword and Continue on Failure         KW: Verify lname field alert text.
#     run keyword and Continue on Failure         KW: Verify password field alert text.
#     run keyword and Continue on Failure         KW: Verify organization field alert text.
#     run keyword and Continue on Failure         KW: Verify terms and condition field alert text.

#     run keyword and Continue on Failure         KW: Click the email id field.
#     run keyword and Continue on Failure         KW: Click the fname field.
#     run keyword and Continue on Failure         KW: Click the lname field.
#     run keyword and Continue on Failure         KW: Click the password field.
#     run keyword and Continue on Failure         KW: Click the organization field.
#     run keyword and Continue on Failure         KW: Check the terms and condition field.
#     run keyword and Continue on Failure         KW: Refresh page.


# TC5:[NEATIVE] [Signup page]- compare the sign up section of the page after clicking the create account with image with SIKULI and perform some check on validation.
#     [Documentation]     This tc's in the Signup page will compare the sign up section of the page with image with SIKULI and perform some check on validation.
#     [Tags]              visual
#     Skip     Skipping the test case
# #    Pass Execution      Passing the test case   deprecated	-regression
# #    Fail                Failing the text case   Deprecated  Smoke Test

#     run keyword and continue on Failure     KW: Start SIKULI SERVER Process.
#     run keyword and Continue on Failure     KW: Verify sign up elements with sikuli process.
#     run keyword and continue on Failure     KW: Stop SIKULI SERVER Process.

# TC6:[NEATIVE] [Signup page]- enter invalid characters on the email field and verify the alert type.
#     [Documentation]     This tc's in the Signup page will enter invalid characters on the email field and verify the alert type and perform some check on validation.
#     [Tags]              negative
#     Skip     Skipping the test case
# #    Pass Execution      Passing the test case   deprecated	-regression
# #    Fail                Failing the text case   Deprecated  Smoke Test

#     run keyword and Continue on Failure         KW: Refresh page.
    
#     run keyword and Continue on Failure         KW: Faker invalid emailids.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.
#     run keyword and Continue on Failure         KW: Verify email field data entered alert text.

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and Continue on Failure         KW: Faker invalid number emailids.
#     run keyword and Continue on Failure         KW: Signup page, submit button clicking.
#     run keyword and Continue on Failure         KW: Verify email field data entered alert text.

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and Continue on Failure         KW: Faker create only special characters as emailids.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.
#     run keyword and Continue on Failure         KW: Verify email field data entered alert text.

#     run keyword and Continue on Failure         KW: Refresh page.

# TC7:[POSITIVE] [Signup page]- enter valid email on the email field and verify others empty fields alert type.
#     [Documentation]     This tc's in the Signup page will enter invalid characters on the email field and verify the alert type and perform some check on validation.
#     [Tags]              negative
#     Skip     Skipping the test case
# #    Pass Execution      Passing the test case   deprecated	-regression
# #    Fail                Failing the text case   Deprecated  Smoke Test

#     run keyword and Continue on Failure         KW: Faker create a valid email id.

#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and Continue on Failure         KW: Verify fname field alert text.
#     run keyword and Continue on Failure         KW: Verify lname field alert text.
#     run keyword and Continue on Failure         KW: Verify password field alert text.
#     run keyword and Continue on Failure         KW: Verify organization field alert text.
#     run keyword and Continue on Failure         KW: Verify terms and condition field alert text.

# TC8:[NEGATIVE] [Signup page]- enter white space or special character on the fname & lname field and verify others empty fields alert type.
#     [Documentation]     This tc's in the Signup page will enter invalid characters on the email field and verify the alert type and perform some check on validation.
#     [Tags]              negative
#     Skip     Skipping the test case
# #    Pass Execution      Passing the test case   deprecated	-regression
# #    Fail                Failing the text case   Deprecated  Smoke Test

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and Continue on Failure         KW: Faker invalid number fname.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and Continue on Failure         KW: Verify email field alert text.
#     run keyword and Continue on Failure         KW: Verify lname field alert text.
#     run keyword and Continue on Failure         KW: Verify password field alert text.
#     run keyword and Continue on Failure         KW: Verify organization field alert text.
#     run keyword and Continue on Failure         KW: Verify terms and condition field alert text.

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and Continue on Failure         KW: Faker create only special characters for fname.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and Continue on Failure         KW: Verify email field alert text.
#     run keyword and Continue on Failure         KW: Verify lname field alert text.
#     run keyword and Continue on Failure         KW: Verify password field alert text.
#     run keyword and Continue on Failure         KW: Verify organization field alert text.
#     run keyword and Continue on Failure         KW: Verify terms and condition field alert text.

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and Continue on Failure         KW: Faker invalid number lname.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and Continue on Failure         KW: Verify email field alert text.
#     run keyword and Continue on Failure         KW: Verify fname field alert text.
#     run keyword and Continue on Failure         KW: Verify password field alert text.
#     run keyword and Continue on Failure         KW: Verify organization field alert text.
#     run keyword and Continue on Failure         KW: Verify terms and condition field alert text.

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and Continue on Failure         KW: Faker create only special characters for lname.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and Continue on Failure         KW: Verify email field alert text.
#     run keyword and Continue on Failure         KW: Verify fname field alert text.
#     run keyword and Continue on Failure         KW: Verify password field alert text.
#     run keyword and Continue on Failure         KW: Verify organization field alert text.
#     run keyword and Continue on Failure         KW: Verify terms and condition field alert text.


# TC9:[NEGATIVE] [Signup page]- enter invalid less then 8 data on the password field and verify fields alert type.
#     [Documentation]     This tc's in the Signup page will enter invalid characters on the email field and verify the alert type and perform some check on validation.
#     [Tags]              negative
#     Skip     Skipping the test case
# #    Pass Execution      Passing the test case   deprecated	-regression
# #    Fail                Failing the text case   Deprecated  Smoke Test

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and Continue on Failure         KW: Faker password as only string.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and Continue on Failure         KW: Verify email field alert text.
#     run keyword and Continue on Failure         KW: Verify fname field alert text.
#     run keyword and Continue on Failure         KW: Verify lname field alert text.
#     run keyword and Continue on Failure         KW: Verify password length alert text.
#     run keyword and Continue on Failure         KW: Verify organization field alert text.
#     run keyword and Continue on Failure         KW: Verify terms and condition field alert text.

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and Continue on Failure         KW: Faker password as only number.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and Continue on Failure         KW: Verify email field alert text.
#     run keyword and Continue on Failure         KW: Verify fname field alert text.
#     run keyword and Continue on Failure         KW: Verify lname field alert text.
#     run keyword and Continue on Failure         KW: Verify password length alert text.
#     run keyword and Continue on Failure         KW: Verify organization field alert text.
#     run keyword and Continue on Failure         KW: Verify terms and condition field alert text.

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and Continue on Failure         KW: Faker password as only special_chars.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and Continue on Failure         KW: Verify email field alert text.
#     run keyword and Continue on Failure         KW: Verify fname field alert text.
#     run keyword and Continue on Failure         KW: Verify lname field alert text.
#     run keyword and Continue on Failure         KW: Verify password length alert text.
#     run keyword and Continue on Failure         KW: Verify organization field alert text.
#     run keyword and Continue on Failure         KW: Verify terms and condition field alert text.

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and Continue on Failure         KW: Enter only special char greater then 8.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and Continue on Failure         KW: Verify email field alert text.
#     run keyword and Continue on Failure         KW: Verify fname field alert text.
#     run keyword and Continue on Failure         KW: Verify lname field alert text.
#     run keyword and Continue on Failure         KW: Verify any text type for password alert.
#     run keyword and Continue on Failure         KW: Verify organization field alert text.
#     run keyword and Continue on Failure         KW: Verify terms and condition field alert text.

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and Continue on Failure         KW: Enter only char greater then 8.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and Continue on Failure         KW: Verify email field alert text.
#     run keyword and Continue on Failure         KW: Verify fname field alert text.
#     run keyword and Continue on Failure         KW: Verify lname field alert text.
#     run keyword and Continue on Failure         KW: Verify any text type for password alert.
#     run keyword and Continue on Failure         KW: Verify organization field alert text.
#     run keyword and Continue on Failure         KW: Verify terms and condition field alert text.

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and Continue on Failure         KW: Enter only number greater then 8.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and Continue on Failure         KW: Verify email field alert text.
#     run keyword and Continue on Failure         KW: Verify fname field alert text.
#     run keyword and Continue on Failure         KW: Verify lname field alert text.
#     run keyword and Continue on Failure         KW: Verify any text type for password alert.
#     run keyword and Continue on Failure         KW: Verify organization field alert text.
#     run keyword and Continue on Failure         KW: Verify terms and condition field alert text.

#     run keyword and Continue on Failure         KW: Refresh page.


# TC11:[POSITIVE] [Signup page]- enter whitespace for all the fields in the signup page and click signup button.
#     [Documentation]     This tc's in the Signup page will enter invalid characters on the email field and verify the alert type and perform some check on validation.
#     [Tags]              positive
#     Skip     Skipping the test case
# #    Pass Execution      Passing the test case   deprecated	-regression
# #    Fail                Failing the text case   Deprecated  Smoke Test

#     run keyword and Continue on Failure         KW: Refresh page.
#     run keyword and continue on Failure         KW: Type whitespace on email id field.
#     run keyword and Continue on Failure         KW: Type whitespace on fname field.
#     run keyword and Continue on Failure         KW: Type whitespace on lname field.
#     run keyword and Continue on Failure         KW: Type whitespace on pwd field.
#     run keyword and Continue on Failure         KW: Type whitespace on org field.
#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.
#     run keyword and Continue on Failure         KW: Refresh page.


# TC10:[POSITIVE] [Signup page]- complete signup by the organizer.
#     [Documentation]     This tc's in the Signup page will enter invalid characters on the email field and verify the alert type and perform some check on validation.
#     [Tags]              positive
#     Skip     Skipping the test case
# #    Pass Execution      Passing the test case   deprecated	-regression
# #    Fail                Failing the text case   Deprecated  Smoke Test

#     run keyword and Continue on Failure         KW: Refresh page.

#     run keyword and continue on Failure         KW: To open the workbook to the specified path.
#     run keyword and continue on Failure         KW: Interacting with the Excel sheet1.

#     run keyword and continue on Failure         KW: Faker create a valid email id.
#     run keyword and continue on Failure         KW: Write email to the excel.

#     run keyword and Continue on Failure         KW: Faker valid fname.
#     run keyword and continue on Failure         KW: Write fname to the excel.

#     run keyword and Continue on Failure         KW: Faker valid lname.
#     run keyword and continue on Failure         KW: Write lname to the excel.

#     run keyword and Continue on Failure         KW: Create valid password.
#     run keyword and continue on Failure         KW: Write password to the excel.

#     run keyword and Continue on Failure         KW: Create valid organization.
#     run keyword and continue on Failure         KW: Write organization to the excel.

#     run keyword and continue on Failure         KW: Write current date to the excel.

#     run keyword and Continue on Failure         KW: Check the terms and condition field.

#     run keyword and Continue on Failure         KW: Click CREATE ACCOUNT button.

#     run keyword and continue on Failure         KW: To save & close the workbook to the specified path.


TC1: Open another tab to redirect & login to chargebee site.
    [Documentation]     This tc's in the Signup page will enter invalid characters on the email field and verify the alert type and perform some check on validation.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and Continue on Failure                 KW: Open new tab.
    run keyword and Continue on Failure                 KW: Goto chargebee site.
    run keyword and Continue on Failure                 KW: To enter valid chargebee email id.
    run keyword and Continue on Failure                 KW: To enter valid chargebee password.
    run keyword and Continue on Failure                 KW: Click on sign in button to login into chargebee.
    BuiltIn.Sleep   10 seconds
    run keyword and Continue on Failure                 KW: Wait for the Sign out options to be displayed.
    run keyword and Continue on Failure                 KW: Condition to click the test site for the env specific.
    run keyword and Continue on Failure                 KW: Wait for the Home options to be displayed.


TC2: Create account for org in chargebee site.
    [Documentation]     This tc's in the Signup page will enter invalid characters on the email field and verify the alert type and perform some check on validation.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and Continue on Failure                 KW: Click on Customer section to goto details page.
    run keyword and Continue on Failure                 KW: Click on Create Customer button to add org details.
    run keyword and Continue on Failure                 KW: Wait for the firs name element to be visibile.
    run keyword and continue on Failure                 KW: To open the workbook to the specified path.
    run keyword and continue on Failure                 KW: Interacting with the Excel sheet1.
    run keyword and Continue on Failure                 KW: Enter org first name on the chargebee form.
    run keyword and continue on Failure                 KW: Write fname to the excel.
    run keyword and Continue on Failure                 KW: Enter org last name on the chargebee form.
    run keyword and continue on Failure                 KW: Write lname to the excel.
    run keyword and Continue on Failure                 KW: Enter org company name on the chargebee form.
    run keyword and continue on Failure                 KW: Write organization to the excel.
    run keyword and Continue on Failure                 KW: Enter org email id on the chargebee form.
    run keyword and continue on Failure                 KW: Write email to the excel.
    run keyword and Continue on Failure                 KW: Scroll to auto collection section on chargebee.
    run keyword and Continue on Failure                 KW: Click on Create Customer to create org.
    run keyword and Continue on Failure                 KW: Verify fname, lname, emails and company name is displaying.
    run keyword and continue on Failure                 KW: Write current date to the excel.
    run keyword and continue on Failure                 KW: To save & close the workbook to the specified path.
    run keyword and continue on Failure                 KW: Close current window tab.

