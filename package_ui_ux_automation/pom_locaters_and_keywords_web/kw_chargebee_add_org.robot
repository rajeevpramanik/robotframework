*** Settings ***
Documentation   This setting is for the branding module image uploading.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${chargebee email placeholder text}                 name@company.com
${chargebee password placeholder text}              password
${chargebee sign in button text}                    Sign in
${chargebee org Select Locale}                      Select Locale
${chargebee org select English language}            English
${chargebee org Select Currency}                    Select Currency
${chargebee org Select USD Currency}                USD

${chargebee org First Name xpath}                   //input[@id\='customer.first_name']
${chargebee org Last Name xpath}                    //input[@id\='customer.last_name']
${chargebee org Company Name xpath}                 //input[@id\='customer.company']
${chargebee org email id xpath}                     //input[@id\='customer.email']


***Keywords***
KW: Goto chargebee site.
    Go To       ${chargebeeurl}
KW: To enter valid chargebee email id.
    QWeb.Type Text       ${chargebee email placeholder text}     ${chargebee username}       anchor=Sign in to Chargebee!

KW: To enter valid chargebee password.
    QWeb.Type Text       ${chargebee password placeholder text}      ${chargebee password}

KW: Click on sign in button to login into chargebee.
    QWeb.Click Text      ${chargebee sign in button text}        anchor=2

KW: Wait for the Sign out options to be displayed.
    Verify Text     Sign out

KW: Wait for the Home options to be displayed.
    Verify Text     Home        anchor=Customers
    
KW: Click on gurupointv2qat TEST Site.
    QWeb.Click Text      TEST Site      anchor=3

KW: Click on gurupointv2stg(v2rel) TEST Site.
    QWeb.Click Text      TEST Site      anchor=4

KW: Condition to click the test site for the env specific.
    Run Keyword If      '${admincmsurl}'=='https://newcms.v2release.demogurupoint.com'       Run Keyword         KW: Click on gurupointv2stg(v2rel) TEST Site.
    Run Keyword If      '${admincmsurl}'=='https://newcms.v2qat.demogurupoint.com'           Run Keyword         KW: Click on gurupointv2qat TEST Site.

KW: Click on Customer section to goto details page.
    QWeb.Click Text      Customers      anchor=Home

KW: Click on Create Customer button to add org details.
    QWeb.Click Text      Create Customer      anchor=Import Customers

KW: Wait for the firs name element to be visibile.
    Verify Element      ${chargebee org First Name xpath}

KW: Enter org first name on the chargebee form.
    KW: create first name.
    QWeb.Type Text       ${chargebee org First Name xpath}      ${fname}

KW: Enter org last name on the chargebee form.
    KW: create last name.
    QWeb.Type Text       ${chargebee org Last Name xpath}      ${lname}

KW: Enter org company name on the chargebee form.
    KW: create organization name.
    QWeb.Type Text       ${chargebee org Company Name xpath}      ${organization}

KW: Enter org email id on the chargebee form.
    KW: Create an email id.
    QWeb.Type Text       ${chargebee org email id xpath}      ${generated email}

KW: Scroll to auto collection section on chargebee.
    Scroll To       Auto Collection*       anchor=Select Currency

KW: Click on Create Customer to create org.
    QWeb.Click Text      Create Customer        anchor=Cancel

KW: Verify fname, lname, emails and company name is displaying.
    Verify All      ${fname}, ${lname}, ${organization}, ${generated email}

