*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${top multi grid item integration element xpath}                          xpath\=//span[contains(text(),'INTEGRATIONS')]
${security sso full element xpath}                                        xpath\=//body/main[@id\='root']/div[2]/section[1]/section[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[2]/div[1]
${sso connect button xpath}                                               xpath\=//body/main[@id\='root']/div[2]/section[1]/section[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/button[1]/span[1]
${sso organization name field xpath}                                      xpath\=//input[@placeholder\='Enter Organization Name']
${sso organization domain name field xpath}                               xpath\=//input[@placeholder='e.g. yourdomain.com']
${sso side frame disabled connect button xpath}                           xpath\=/html/body/div[@role\='presentation']/div[3]/aside//div[@class\='MuiBox-root jss402']/button[@type\='button']
${sso side frame enabled connect button xpath}                            xpath\=/html/body/div[@role\='presentation']/div[3]/aside//div[@class\='MuiBox-root jss402']/button[@type\='button']
${sso side frame cancel button xpath}                                     xpath\=//span[contains(text(),'Cancel')]
${workos sso google xpath}                                                xpath\=//body/div[@id\='__next']/div[1]/div[1]/div[1]/div[2]/ul[1]/li[2]/button[1]/*[1]
${connected sso xpath}                                                    xpath\=//span[normalize-space()\='CONNECTED']
${gear box or setting xpath}                                              xpath\=//div[@id\='events-tabpanel-all']//div//div//div//div//div//div//div//div//div//button[@type\='button']//span//*[local-name()\='svg']
${disconnect sso xpath}                                                   xpath\=//span[normalize-space()\='Disconnect']
${sso side panel connected status}                                        xpath\=/html/body/div[@role='presentation']/div[3]/aside/div//ul//a/span[.='CONNECTED']
${org name displaying on the side panel rel xpath}                        xpath\=/html[1]/body[1]/div[5]/div[3]/aside[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/p[1]
${org domain name displaying on the side panel rel xpath}                 xpath\=/html[1]/body[1]/div[5]/div[3]/aside[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/p[1]
${sso disconnect cancel popup xpath}                                      xpath\=//span[contains(text(),'CANCEL')]
${sso disconnect confirm popup xpath}                                     xpath\=//span[contains(text(),'CONFIRM')]
${sso disconnect and connect alert xpath}                                 xpath\=//body/main[@id\='root']/div[2]/div[2]
${support connect email element xpath}                                    xpath\=/html/body/div[@role\='presentation']/div[3]/aside/div/div/div[5]/p
${reconnect button}                                                       xpath\=//button[@type\='button']//span//span[contains(text(),'Connect')]

${security sso full element image}                              ${sso_image}sso_section.png
${security sso icon image}                                      ${sso_image}sso_security_icon.png
${gurupoint icon plus sso icon}                                    ${sso_image}gurupoint_plus_sso.png
${workspace select google sso}                                  ${sso_image}workspace_sso_select_google.png
${workspace select google sso using sikuli}                     ${sso_image}workos_google_sikuli.png

${connected sso image}                                          ${sso_image}sso_connected_icon.png
${gear box or setting image}                                    ${sso_image}sso_gearbox.png
${sso side panel connection org details}                        ${sso_image}sso_gearbox_connection_status.png
${sso popup connection icon image}                              ${sso_image}sso_disconnect_popup_popup_icon.png


***Keywords***
KW: Click on the top multi grid item integration module.
    QWeb.Click Element      ${top multi grid item integration element xpath}

KW: Hover upon the top multi grid item integration module.
    Hover Element       ${top multi grid item integration element xpath}

KW: Expect the sso section element is enabled and displayed.
    Is Element      ${security sso full element xpath}

KW: Expect the sso section element text is displayed.
    Is Text      Allows team members to sign in to your site using their Single Sign-On credentials. gurupoint allows for Single Sign-On authentication via Google or SAML.

KW: Hover upon the sso section element.
    Hover Element       ${top multi grid item integration element xpath}

KW: Scroll to the sso element section.
    Scroll To           ${security sso full element xpath}      timeout=120

KW: Click on the connect button within the sso section.
    QWeb.Click Element      ${sso connect button xpath}

KW: Expect the sso side panel has text displayed.
    Is Text     gurupoint allows for Single Sign-on authentication using Google, SAML and many more platforms.

KW: Enter the details below to proceed text is displayed.
    Is Text     Enter the details below to proceed.

KW: Expected the sso side panel, organization filed is visible.
    Is Element      ${sso organization name field xpath}

KW: Expected the sso side panel, organization domain name filed is visible.
    Is Element      ${sso organization domain name field xpath}

KW: Expected the sso side panel, connect button is in disable mode and visible.
    Verify No Element      ${sso side frame disabled connect button xpath}

KW: Expected the sso side panel, connect button is in enabled mode and visible.
    Verify Text         Connect

KW: Expected the sso side panel, cancel button is in enabled mode and visible.
    Verify Element      ${sso side frame cancel button xpath}

KW: Get the sso icon using qweb get icon.
    Capture Icon        xpath\=//body/main[@id\='root']/div[2]/section[1]/section[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/img[1]        /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/sikuli_stored_images/         custom_screenshot_name_123.png

KW: Verifying the sso security icon visibility.
    Verify Icon         ${security sso icon image}

KW: Verifying the gurupoint plus the sso icon visibility.
    Verify Icon         ${gurupoint icon plus sso icon}

KW: Click the org name field.
    QWeb.Click Element      ${sso organization name field xpath}

KW: Enter organizer name from the excel.
    KW: To open the workbook to the specified path.
    KW: Interacting with the Excel sheet1.
    KW: Read excel for organizer name.
    Type Text       ${sso organization name field xpath}        ${read_org}
    KW: To save & close the workbook to the specified path.

KW: Click the org domain name field.
    QWeb.Click Element      ${sso organization domain name field xpath}

KW: Enter organizer domain name and save it to the excel.
    KW: To open the workbook to the specified path.
    KW: Interacting with the Excel sheet1.
    KW: Random domain name.
    KW: Write excel for organizer domain name.
    Type Text       ${sso organization domain name field xpath}        ${domain_name}
    KW: To save & close the workbook to the specified path.

KW: Click on the active connect button.
    QWeb.Click Text     CONNECT     anchor=Cancel

KW: Select google from the workos site using Sikuli.
    SikuliLibrary.Add Image Path              ${workspace select google sso using sikuli}
    SikuliLibrary.Wait Until Screen Contain   ${workspace select google sso using sikuli}      30
    SikuliLibrary.Highlight                   ${workspace select google sso using sikuli}
    Mouse Move                                ${workspace select google sso using sikuli}
    SikuliLibrary.Clear Highlight             ${workspace select google sso using sikuli}
    SikuliLibrary.Click                       ${workspace select google sso using sikuli}
    SikuliLibrary.Click                       ${workspace select google sso using sikuli}
    ${IS EXITS}=    SikuliLibrary.Exists      ${workspace select google sso using sikuli}      3
    run keyword if      "${IS EXITS}"=="True"       pass execution
    ...     else if     "${IS EXITS}"=="False"      fail
    ...     else        fatal error

KW: Click on workos get started button.
    QWeb.Click Text         Get Started →       anchor=Don't see your provider?

KW: Click on workos confirm button.
    QWeb.Click Text         Confirm       anchor=Allowed Domains


KW: Assert the green conection icon.
    Verify Icon         ${connected sso image}

KW: Verify the green connected element is present.
    Verify Element      ${connected sso xpath}

KW: Assert the gearbox icon.
    Verify Icon         ${gear box or setting image}

KW: Verify the gearbox element is present.
    Verify Element      ${gear box or setting xpath}

KW: Click on the gearbox icon.
    QWeb.Click Element          ${gear box or setting xpath}

KW: Assert the side panel sso connect, disconnect and details.
    Verify Icon         ${sso side panel connection org details}

KW: Assert the connected word is displaying.
    Verify Text         CONNECTED

KW: Verify the green connected element is present on the side panel.
    Verify Element      ${sso side panel connected status}

KW: Verify the disconnected element is present on the side panel.
    Verify Element      ${disconnect sso xpath}

KW: Assert the disconnected word is displaying.
    Verify Text         Disconnect

KW: Assert the configuration and connection title is displayed.
    Verify Text         SSO is configured and connected with the Organisation name and Domain mentioned below.

KW: Verify all for text assertion with the side panel.
    Verify All      ${read_org}, ${read_domain}

KW: Assert the org name, domain along with the excel sheet.
    KW: To open the workbook to the specified path.
    KW: Interacting with the Excel sheet1.
    KW: Read excel for organizer domain name.
    KW: Read excel for organizer name.
    KW: Verify all for text assertion with the side panel.
    KW: To save & close the workbook to the specified path.

KW: Click on the disconnect element.
    QWeb.Click Element          ${disconnect sso xpath}

KW: Verify cancel and confirm text on the popup
    Verify All      CANCEL, CONFIRM, Disconnect Single-Sign On (SSO), You are about to disconnect your Single-Sign On (SSO). Are you sure want to continue?

KW: Wait for the popup to appears and there cancel & confirm elements to be visible.
    Verify Element      ${sso disconnect cancel popup xpath}
    Verify Element      ${sso disconnect confirm popup xpath}

KW: Asserting the sso popup connection icon.
    Verify Icon         ${sso popup connection icon image}

KW: Click on the popup cancel button.
    QWeb.Click Element      ${sso disconnect cancel popup xpath}

KW: Click on the popup confirm button.
    QWeb.Click Element      ${sso disconnect confirm popup xpath}

KW: Verify alert is present.
    Is Alert        10s

KW: Success alert for Connecting.
    Verify Element Text       ${sso disconnect and connect alert xpath}         SSO support is successfully added
    Verify Element Text       ${sso disconnect and connect alert xpath}         success

KW: Success alert for Disconnecting.
    Verify Element Text       ${sso disconnect and connect alert xpath}         SSO successfully disconnected
    Verify Element Text       ${sso disconnect and connect alert xpath}         success

KW: Verify the element has support text and email ids.
    Verify All        If you want to Create a New Authentication(with a new Organisation and Domain Name), reach out to, 'support@gurupoint.com'.

KW: Verify the connect element is enabled and displayed.
    Verify Element      ${reconnect button}

KW: Click on the reconnect button.
    QWeb.Click Element      ${reconnect button}