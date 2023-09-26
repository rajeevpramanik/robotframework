*** Settings ***
Documentation   This setting is for the signup module settings.

***Variables***
${guru99_image}                                     ../sikuli_or_qweb_stored_iImages/sign_up_page/
${guru99_signs_up_page}                             ${guru99_image}guru99_signsup_email_field.PNG
${username_and_password}                            ${guru99_image}username_password_details.png
${future_user_details_alert}                        ${guru99_image}Please_Take_Screenshot_user_login_details.PNG

${email_id_field_xpath}                             xpath\=//body/form[@name\='frmLogin']/table//input[@name\='emailid']
${singsup_page_submit_button_xpath}                 xpath\=//body/form[@name\='frmLogin']/table//input[@name\='btnLogin']
${email field empty alert xpath}                    xpath\=/html//label[@id\='message9']
${user id css}                                      css\=tbody tr:nth-of-type(4) [align='center']:nth-of-type(2)
${user id get cell text}                            r?User ID :/c2
${passord get cell text}                            r?Password :/c2




*** Keywords ***
KW: Verify the signup email field is present and verified by the stored image.
    Set Config    RetinaDisplay       False
    Set Config    Log Matched Icons       True
    # Wait Until Keyword Succeeds         10sec       1sec        
    ${check the signup page image is similar or not}        Is Icon         ${guru99_signs_up_page}         #template_res_w=1890        browser_res_w=1920

KW: Verify email field displayed and enabled.
    Verify Element      ${email_id_field_xpath}         partial_match=False

KW: Verify submit button displayed and enabled.
    Verify Element      ${singsup_page_submit_button_xpath}         partial_match=False

KW: Faker invalid emailids.
    ${Invalid Emails}=      FakerLibrary.word
    Type Text       ${email_id_field_xpath}     ${Invalid Emails}

KW: Faker invalid number emailids.
    ${Invalid number emails}=   FakerLibrary.Random Number      digits=10     fix_len=True
    Type Text       ${email_id_field_xpath}     ${Invalid number emails}

KW: Signup page, email field clicking.
    QWeb.Click Element       ${email_id_field_xpath}        timeout=5       js=False

KW: Signup page, submit button clicking.
    QWeb.Click Text      Submit     anchor=Email ID

KW: Assert the empty email field alert text.
    QWeb.VerifyElementText      ${email field empty alert xpath}      ${Email_Empty_field_alert}      timeout=5
    Log     ${Email_Empty_field_alert}

KW: Assert the invalid enter of email to the field with alert text.
    QWeb.VerifyElementText      ${email field empty alert xpath}      ${Email_entered_field_alert}      timeout=5
    Log     ${Email_entered_field_alert}

KW: Enter valid email address on the email field.
    Type Text       ${email_id_field_xpath}     ${Fake email id}

KW: Fetch username after sign up.
    QWeb.Use Table       ${Access_details_to_demo_site}        #child=True
    ${user_id} =  QWeb.Get Cell Text        ${user id get cell text}
    Log To Console      ${user_id}
    set global variable     ${user_id}
    KW: Write username to the excel.

KW: Fetch password after sign up.
    QWeb.Use Table       ${Access_details_to_demo_site}        #child=True
    ${password} =  QWeb.Get Cell Text        ${passord get cell text} 
    Log To Console      ${password}
    set global variable     ${password}
    KW: Write password to the excel.

KW: Verifying app or image of the screenshot alert of user login details.
    Verify App      ${future_user_details_alert}

KW: Verify all the text present on the Access details to demo site.
    Verify all      Access details to demo site, User ID :, Password :, This access is valid only for 20 days.





KW: Compare signup page, email field & submit button using SIKULI.
    SikuliLibrary.Start Sikuli Process
    SikuliLibrary.Add Image Path              ${guru99_signs_up_page}
    SikuliLibrary.Wait Until Screen Contain   ${guru99_signs_up_page}      2
    SikuliLibrary.Highlight                   ${guru99_signs_up_page}
    SikuliLibrary.Clear Highlight             ${guru99_signs_up_page}
    ${IS EXITS}=    SikuliLibrary.Exists      ${guru99_signs_up_page}      2
    run keyword if      "${IS EXITS}"=="True"       pass execution
    ...     else if     "${IS EXITS}"=="False"      fail
    ...     else        fatal error
    SikuliLibrary.Stop Remote Server

KW: Compare signup page details, username and password using SIKULI.
    SikuliLibrary.Start Sikuli Process
    SikuliLibrary.Add Image Path              ${username_and_password}
    SikuliLibrary.Wait Until Screen Contain   ${username_and_password}     2
    SikuliLibrary.Highlight                   ${username_and_password}
    SikuliLibrary.Clear Highlight             ${username_and_password}
    ${IS EXITS}=    SikuliLibrary.Exists      ${username_and_password}      2
    run keyword if      "${IS EXITS}"=="True"       pass execution
    ...     else if     "${IS EXITS}"=="False"      fail
    ...     else        fatal error
    SikuliLibrary.Stop Remote Server


