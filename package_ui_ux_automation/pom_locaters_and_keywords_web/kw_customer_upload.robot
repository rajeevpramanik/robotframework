*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${people on hamburger xpath}                                xpath\=//span[normalize-space()\='PEOPLE']
${side panel dropdown element xpath}                        xpath\=//body/div[@role\='presentation']/div/aside/div/div/div/div/div/div/div[1]
${attendees excel download button xpath}                    xpath\=//div[@role\='presentation']//div//aside//div//div//div//div//div//div//button[@type\='button']
${upload_excel_xpath}                                       xpath\=//input[@id\='attendee_file']
${overview on the hamburger xpath}                          xpath\=//span[normalize-space()\='Overview']
${excel has been uploaded alert xpath}                      xpath\=//body/main[@id\='root']/div/div/div/div[@direction\='up']/div/div/span[2]
${upload success alert xpath}                               xpath\=//body/main[@id\='root']/div/div/div/div[@direction='up']/div/div/span[1]
${attendees enter fname xpath}                              xpath\=//input[@placeholder\='Enter First Name']
${attendees enter lname xpath}                              xpath\=//input[@placeholder\='Enter Last Name']
${attendees enter email xpath}                              xpath\=//input[@placeholder\='Enter Email ID']
${attendees select gender xpath}                            xpath\=//input[@value\='Male']
${attendees enter attendees about xpath}                    xpath\=//textarea[@placeholder\='Enter About']
${attendees enter attendees Designation xpath}              xpath\=//input[@placeholder\='Enter Designation']
${attendees enter attendees Organisation xpath}             xpath\=//input[@placeholder\='Enter Organisation']
${attendees enter send email invitaion checkbox xpath}      xpath\=//input[@name\='is_send_invite_mail']

${firstname}=       Rajeev
${lastname}=       Pramanik
${email}=       rajeev.rpa.automation@gmail.com

${Select All check box text}        Select All

***Keywords***
KW: Click the select dropdown to select the people option button to save the data.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      Select      anchor=Group

KW: Wait and verify that the Select All check box option is displaying.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text      ${Select All check box text}      anchor=Default Fields

KW: Click the Select All check box to add the attendees.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      ${Select All check box text}      anchor=Default Fields

KW: Click the Continue button to save the data.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      Continue      anchor=Cancel

KW: Wait and verify that the single attendee option is displaying.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text      Single Add      anchor=Bulk Upload

KW: Wait and verify that the Bulk Upload attendee option is displaying.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text      Bulk Upload      anchor=Single Add

KW: Click the Single Add attendee option to perform action.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      Single Add      anchor=Bulk Upload

KW: Click the Bulk Upload attendee option to perform action.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      Bulk Upload      anchor=Single Add

KW: Click on the people module.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${people on hamburger xpath}

KW: Hover upon the ADD PEOPLE multi dropdown.
    Wait Until Keyword Succeeds         30sec       10sec        Hover Text      ADD PEOPLE      anchor=STATUS

KW: Click upon the ADD PEOPLE button to add people.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      ADD PEOPLE      anchor=Status

KW: Click upon the ADD PEOPLE multi dropdown.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      ADD PEOPLE      anchor=STATUS

KW: Hover upon the BULK UPLOAD multi dropdown value.
    Wait Until Keyword Succeeds         30sec       10sec        Hover Text      Bulk Upload      anchor=ADD PEOPLE

KW: Click upon the BULK UPLOAD multi dropdown value.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      Bulk Upload      anchor=ADD PEOPLE

KW: Side panel exists or not.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text      Bulk Upload

KW: Click on the dropdown to click attendees excel value.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${side panel dropdown element xpath}

KW: Verify dropdown values.
    Wait Until Keyword Succeeds         30sec       10sec        Verify All      Attendee, Speaker, Booth Member

KW: Click on the Attendees value on the dropdown.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      Attendee      anchor=Speaker

KW: Click on the download button.
    Verify Element      ${attendees excel download button xpath}
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      Download      anchor=Download the template file

KW: Upload people excel sheet.
    KW: Fetch only the latest excel sheet download.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Upload File        ${upload_excel_xpath}       ${people_folder}${fetching_latest_people_excel_sheet}

KW: Verify the green success alert after uploading the people excelsheet.
    Verify Element Text       ${excel has been uploaded alert xpath}         File has been uploaded.
    Verify Element Text       ${upload success alert xpath}                 Success

KW: Click on ADD button.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      ADD      anchor=Cancel

KW: Hover upon the Single Add multi dropdown value.
    Wait Until Keyword Succeeds         30sec       10sec        Hover Text      Single Add      anchor=ADD PEOPLE

KW: Click upon the Single Add multi dropdown value.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      Single Add      anchor=ADD PEOPLE

KW: Enter attendees fname.
    Type Text       ${attendees enter fname xpath}       ${firstname}

KW: Enter attendees fname for branding verification.
    KW: create first name.
    Type Text       ${attendees enter fname xpath}       ${fname}

KW: Enter attendees lname for branding verification.
    KW: create last name.
    Type Text       ${attendees enter lname xpath}       ${lname}

KW: Enter attendees email for branding verification.
    KW: Create an email id.
    Type Text       ${attendees enter email xpath}       ${generated email}

KW: Enter attendees lname.
    Type Text       ${attendees enter lname xpath}       ${lastname}

KW: Enter attendees email.
    Type Text       ${attendees enter email xpath}       ${email}

KW: Select male as a gender.
    QWeb.Click Element       ${attendees select gender xpath}

KW: Enter attendees about info.
    KW: Faker create info.
    Type Text       ${attendees enter attendees about xpath}        ${info}

KW: Enter attendees designation.
    KW: Faker create designation.
    Type Text       ${attendees enter attendees Designation xpath}        ${designation}

KW: Enter attendees organization.
    KW: create organization name.
    Type Text       ${attendees enter attendees Organisation xpath}        ${organization}

KW: Click the sender email or invite email checkbox.
    Click Checkbox      ${attendees enter send email invitaion checkbox xpath}      on      anchor=Send Invite Mail

KW: Verify the green success alert after adding the single people.
    Verify Element Text       ${excel has been uploaded alert xpath}         Data saved successfully
    Verify Element Text       ${upload success alert xpath}                 Success

KW: Verify the fname, lname and the email entered manually.
    Wait Until Keyword Succeeds         30sec       10sec        Verify All      ${firstname}, ${lastname}, ${email}

KW: Click on the overview module.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${overview on the hamburger xpath}

KW: Verify the green success alert after uploading the people excelsheet and clicking the add button.
    Verify Element Text       ${excel has been uploaded alert xpath}         The file has been uploaded. The changes are being processed and will be updated shortly
    Verify Element Text       ${upload success alert xpath}                 Success

KW: Verify the fname & lname on the lounge list view manually added.
    Wait Until Keyword Succeeds         30sec       10sec        Verify All      ${firstname}, ${lastname}
