*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***

# [Documentation]       This section is for the stored images key & value for signup page.
${login_page_default_image}                              ${login_image}login_page_demo_image.png
${signup_page_default_image}                              ${sign_up_Image}signup_page_event_banner.png
${alert_simply_clicked_signup_button_image}               ${sign_up_Image}alert_simply_clicked_signup_button.png
${create_account_button_image}                            ${sign_up_Image}create_account_button.png
${create_password_field_alert_image}                      ${sign_up_Image}create_password_field_alert.png
${first_name_field_alert_image}                           ${sign_up_Image}first_name_field_alert.png
${hub_signup_page_image}                                  ${sign_up_Image}hub_signup_page.png
${last_name_field_alert_image}                            ${sign_up_Image}last_name_field_alert.png
${only_username_field_alert_image}                        ${sign_up_Image}only_username_field_alert.png
${organization_business_name_alert_image}                 ${sign_up_Image}organization_business_name_alert.png
${signup_section_image}                                   ${sign_up_Image}signup_section.png
${terms_condition_alert_image}                            ${sign_up_Image}terms_condition_alert.png
${termsandcondition_checkbox_image}                       ${sign_up_Image}termsandcondition_checkbox.png
${create_account_link_on_login_page_image}                ${login_image}create_account_link_on_login_page.png
${user name field image}                                  ${sign_up_Image}username_field.png

# [Documentation]       This section is for the stored the xpath or locators of the elements for signup page.
${create_account_element_login_page_xpath}          xpath\=//span[contains(text(),'Create an account')]
${email_id_field_xpath}                             xpath\=/html//input[@id\='email']
${fname_field_xpath}                                xpath\=/html//input[@id\='firstName']
${lname_field_xpath}                                xpath\=/html//input[@id\='lastName']
${pwd_field_xpath}                                  xpath\=/html//input[@id\='password']
${organization_field_xpath}                         xpath\=/html//input[@id\='orgName']
${termsandcondition_field_xpath}                    xpath\=//input[@name\='termsConditions']
${create_account_button_xpath}                      xpath\=//span[contains(text(),'Create Account')]

# ${Email Field empty alert}                          xpath\=/html//label[@id\='message9']
# ${User Id CSS}                                      css\=tbody tr:nth-of-type(4) [align='center']:nth-of-type(2)
# ${User Id Get Cell Text}                            r?User ID :/c2
# ${Passord Get Cell Text}                            r?Password :/c2

# [Documentation]       This section is for the stored the default alerts locators with xpath against the respective elements for signup page.
${email field empty alert xpath}                    xpath\=/html//p[@id\='email-help-text']
${first name field empty alert xpath}               xpath\=/html//p[@id\='firstName-help-text']
${last name field empty alert xpath}                xpath\=/html//p[@id\='lastName-help-text']
${password field empty alert xpath}                 xpath\=/html//p[@id\='password-help-text']
${organization field empty alert xpath}             xpath\=/html//p[@id\='orgName-help-text']
${terms and condition empty alert xpath}            xpath\=/html//p[@id\='undefined-help-text']


# [Documentation]       This section is for the stored the default alerts against the respective elements for signup page.
${email field empty alert}=                     Please enter your email id
${email field invalid data entered alert}=      Please enter a valid email id
${first name field empty alert}=                Please enter your first name
${last name field empty alert}=                 Please enter your last name
${password field empty alert}=                  Please enter your password
${password field all combination alert}=        Password should contain at least an uppercase letter, a number & a special character from
${password length alert}=                       Password should be at least 8 characters
${organization field empty alert}=              Please enter your organization/ Business name
${terms and condition empty alert}=             Please agree to terms and conditions to proceed


# [Documentation]       This section is for the stored elements texts for signup page.
${create an account text}=                CREATE AN ACCOUNT


*** Keywords ***
KW: Verify "CREATE AN ACCOUNT" element is displayed and enabled.
    Wait Until Keyword Succeeds         1min       10sec        Verify Element      ${create_account_element_login_page_xpath}

KW: Verify "CREATE AN ACCOUNT" element text matches.
    Wait Until Keyword Succeeds         1min       10sec        Verify Element Text     ${create_account_element_login_page_xpath}      ${create an account text}

KW: Verify clicking "CREATE AN ACCOUNT" element is redirecting to sign up page.
    Wait Until Keyword Succeeds         1min       10sec        QWeb.Click Element       ${create_account_element_login_page_xpath}

KW: Verify the sign up elements are displayed using locators.
    Wait Until Keyword Succeeds         1min       10sec        Is Element          ${email_id_field_xpath}
    Wait Until Keyword Succeeds         1min       10sec        Is Element          ${fname_field_xpath}
    Wait Until Keyword Succeeds         1min       10sec        Is Element          ${lname_field_xpath}
    Wait Until Keyword Succeeds         1min       10sec        Is Element          ${pwd_field_xpath}
    Wait Until Keyword Succeeds         1min       10sec        Is Element          ${organization_field_xpath}
    Wait Until Keyword Succeeds         1min       10sec        Is Element          ${termsandcondition_field_xpath}
    Wait Until Keyword Succeeds         1min       10sec        Is Element          ${create_account_button_xpath} 

KW: Clear the active field.
    Clear Field

KW: Click the email id field.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${email_id_field_xpath}

KW: Click the fname field.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${fname_field_xpath}

KW: Click the lname field.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${lname_field_xpath}

KW: Click the password field.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${pwd_field_xpath}

KW: Click the organization field.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${organization_field_xpath}

KW: Check the terms and condition field.
    Wait Until Keyword Succeeds         30sec       10sec        Click Checkbox      ${termsandcondition_field_xpath}        on

KW: Check login image is displaying.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Icon         ${login_page_default_image}

KW: Check signup image is displaying.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Icon         ${signup_page_default_image}

KW: Verify sign up elements with sikuli process.
    Wait Until Keyword Succeeds         1min       10sec        SikuliLibrary.Add Image Path              ${hub_signup_page_image}
    Wait Until Keyword Succeeds         1min       10sec        setup_teardown_func.KW: Sleep Mode        ${sleep seconds}
    Wait Until Keyword Succeeds         1min       10sec        SikuliLibrary.Wait Until Screen Contain   ${hub_signup_page_image}      30
    Wait Until Keyword Succeeds         1min       10sec        SikuliLibrary.Highlight                   ${hub_signup_page_image}
    Wait Until Keyword Succeeds         1min       10sec        setup_teardown_func.KW: Sleep Mode        ${sleep seconds}
    Wait Until Keyword Succeeds         1min       10sec        SikuliLibrary.Clear Highlight             ${hub_signup_page_image}
    ${IS EXITS}=    SikuliLibrary.Exists      ${hub_signup_page_image}      5
    run keyword if      "${IS EXITS}"=="True"       pass execution
    ...     else if     "${IS EXITS}"=="False"      fail
    ...     else        fatal error
 
KW: Verify login sections image with sikuli process.
    Capture Icon        xpath\=//img[@alt\='Event cms - Banner']          /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/sikuli_stored_images      login_banner.png

KW: Verify sign up sections elements with sikuli process.
    SikuliLibrary.Add Image Path              ${signup_section_image}
    setup_teardown_func.KW: Sleep Mode        ${sleep seconds}
    SikuliLibrary.Wait Until Screen Contain   ${signup_section_image}      30
    SikuliLibrary.Highlight                   ${signup_section_image}
    setup_teardown_func.KW: Sleep Mode        ${sleep seconds}
    SikuliLibrary.Clear Highlight             ${signup_section_image}
    ${IS EXITS}=    SikuliLibrary.Exists      ${signup_section_image}      5
    run keyword if      "${IS EXITS}"=="True"       pass execution
    ...     else if     "${IS EXITS}"=="False"      fail
    ...     else        fatal error
    
KW: Click CREATE ACCOUNT button.
    QWeb.Click Element       ${create_account_button_xpath}

KW: Verify email field alert text.
    Verify Element Text     ${email field empty alert xpath}            ${email field empty alert}

KW: Verify email field data entered alert text.
    Verify Element Text     ${email field empty alert xpath}            ${email field invalid data entered alert}

KW: Verify fname field alert text.
    Verify Element Text     ${first name field empty alert xpath}       ${first name field empty alert}

KW: Verify lname field alert text.
    Verify Element Text     ${last name field empty alert xpath}        ${last name field empty alert}

KW: Verify password field alert text.
    Verify Element Text     ${password field empty alert xpath}         ${password field empty alert}

KW: Verify password length alert text.
    Verify Element Text     ${password field empty alert xpath}         ${password length alert}

KW: Verify password alert for string.
    KW: Faker characters greater then 8.
    Verify Element Text     ${password field empty alert xpath}         ${password field all combination alert} ${characters_8}

KW: Verify password alert for number.
    KW: Faker numeric digits greater then 8.
    Verify Element Text     ${password field empty alert xpath}         ${password field all combination alert} ${number_8}

KW: Verify password alert for special characters.
    KW: Faker special char greater then 8.
    Verify Element Text     ${password field empty alert xpath}         ${password field all combination alert} ${special_8}

KW: Verify organization field alert text.
    Verify Element Text     ${organization field empty alert xpath}     ${organization field empty alert}

KW: Verify terms and condition field alert text.
    Verify Element Text     ${terms and condition empty alert xpath}        ${terms and condition empty alert}

KW: Signup page, submit button clicking.
    QWeb.Click Text      Create Account

KW: Faker invalid emailids.
    KW: Faker word.
    Type Text       ${email_id_field_xpath}     ${word}

KW: Faker invalid number emailids.
    KW: Faker numeric digits.
    Type Text       ${email_id_field_xpath}     ${number}

KW: Faker create only special characters as emailids.
    KW: Faker create only special characters.
    Type Text       ${email_id_field_xpath}         ${special_characters}

KW: Faker create a valid email id.
    KW: Create an email id.
    Type Text       ${email_id_field_xpath}     ${generated email}

KW: Faker invalid number fname.
    KW: Faker numeric digits.
    Type Text       ${fname_field_xpath}     ${number}

KW: Faker create only special characters for fname.
    KW: Faker create only special characters.
    Type Text       ${fname_field_xpath}        ${special_characters}

KW: Faker create only special characters for lname.
    KW: Faker special char greater then 8.
    Type Text       ${lname_field_xpath}        ${special_8}        timeout=3

KW: Faker invalid number lname.
    KW: Faker numeric digits.

KW: Faker valid fname.
    KW: create first name.
    Type Text       ${fname_field_xpath}     ${fname}

KW: Faker valid lname.
    KW: create last name.
    Type Text       ${lname_field_xpath}     ${lname}

KW: Faker password as only string.
    KW: Faker characters less then 8.
    Type Text       ${pwd_field_xpath}      ${characters_7}

KW: Faker password as only number.
    KW: Faker numeric digits.
    Type Text       ${pwd_field_xpath}      ${number}

KW: Faker password as only special_chars.
    KW: Faker special char less then 8.
    Type Text       ${pwd_field_xpath}      ${special_7}

KW: Enter only special char greater then 8.
    KW: Faker special char greater then 8.
    Type Secret        ${pwd_field_xpath}      ${special_8}

KW: Enter only char greater then 8.
    KW: Faker characters greater then 8.
    Type Secret        ${pwd_field_xpath}      ${characters_8}

KW: Enter only number greater then 8.
    KW: Faker numeric digits greater then 8.
    Type Secret        ${pwd_field_xpath}      ${number_8}

KW: Verify any text type for password alert.
    Verify Any      ${password field all combination alert}

KW: Create valid password.
    KW: create password greater then 8.
    Type Secret        ${pwd_field_xpath}      ${password10}

KW: Create valid organization.
    KW: create organization name.
    Type Secret        ${organization_field_xpath}      ${organization}

KW: Type whitespace on email id field.
    Type Text       ${email_id_field_xpath}     ${SPACE * 10}       \ \ \ \ \ \ \ \ \ \ \

KW: Type whitespace on fname field.
    Type Text       ${fname_field_xpath}     ${SPACE * 10}      \ \ \ \ \ \ \ \ \ \ \

KW: Type whitespace on lname field.
    Type Text       ${lname_field_xpath}     ${SPACE * 10}      \ \ \ \ \ \ \ \ \ \ \

KW: Type whitespace on pwd field.
    Type Text       ${pwd_field_xpath}     ${SPACE * 10}        \ \ \ \ \ \ \ \ \ \ \

KW: Type whitespace on org field.
    Type Text       ${organization_field_xpath}     ${SPACE * 10}       \ \ \ \ \ \ \ \ \ \ \
