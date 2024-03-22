*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${All tab panel xpath}                                          xpath\=(//span[normalize-space()\='All'])[1]
${Sales & Marketing tab panel xpath}                            xpath\=(//span[normalize-space()\='Sales & Marketing'])[1]
${salesforce multi box frame xpath}                             xpath\=(//div)[148]
${salesforce connect button xpath}                              xpath\=(//button[contains(@type,'button')])[17]
${salesforce how it works button xpath}                         xpath\=(//button[@type\='button'])[18]
${salesforce side panel connect button xpath}                   xpath\=(//button[@type\='submit'])[1]
${salesforce authenticate iframe tray xpath}                    xpath\=(//iframe[@id\='tray-io-iframe1' and @class\='iframe'])[1]
${salesforce side panel entire panel xpath}                     xpath\=(//div)[247]

${salesforce All tab panel text}                    All
${salesforce Sales & Marketing tab panel text}      Sales & Marketing
${salesforce text}                                  Salesforce
${salesforce How it works?}                         How it works?
${salesforce info}                                  Connect Salesforce to export the registration data seamlessly from gurupoint to Salesforce
${Integrate with Salesforce text}                   Integrate with Salesforce
${salesforce note text}                             Note, The registration data is synced at an interval of 5 minutes from gurupoint to Salesforce, Changes will be reflected on your Salesforce after that
${salesforce note2 text}                            gurupoint's Salesforce integration will enable you to manage your event leads and customer relationship data using robust functionality of Salesforce
${salesforce INTEGRATIONS : text}                   INTEGRATIONS :
${salesforce INTEGRATIONS info}                     Export your registration(attendee) data to Salesforce objects, Export the profile fields of your choice to the Salesforce object of your choice like leads, contacts or any other custom Salesforce object, Import registration data from your Salesforce object to gurupoint events
${Connect with Salesforce text}                     Connect with Salesforce
${Connect with Salesforce info}                     Connect your Salesforce account to authenticate gurupoint to access your organisation's account
${salesforce side panel connect text}               Connect

${salesforce iframe Cancel button text}                             Cancel
${salesforce iframe Next button text}                               Next
${Salesforce authentication iframe text}                            Salesforce authentication
${Salesforce authentication iframe New authentication text}         New authentication

${salesforce Create a new authentication iframe text}               Create a new authentication
${salesforce Your authentication name iframe label}                 Your authentication name
${Salesforce instance type iframe label}                            Salesforce instance type
${salesforce iframe Create button text}                             Create

${salesforce official login page Username label}                    Username
${salesforce official login page Password label}                    Password
${salesforce official login page Log In button text}                Log In


***Keywords***
KW: Verify the Sales & Marketing tab panel.
    Verify Element      ${Sales & Marketing tab panel xpath}

KW: Verify the All tab panel.
    Verify Element      ${All tab panel xpath}

KW: Click the Sales & Marketing tab panel.
    KW: Verify the Sales & Marketing tab panel.
    QWeb.Click Element      ${Sales & Marketing tab panel xpath}

KW: Click the All tab panel.
    KW: Verify the All tab panel.
    QWeb.Click Element      ${All tab panel xpath}

KW: Verify the salesforce multi box frame is present.
    Verify Element      ${salesforce multi box frame xpath}

KW: Verify the salesforce text present on the multi box frame.
    Verify Text     ${salesforce text}

KW: Verify the salesforce info present on the multi box frame.
    Verify All      ${salesforce info}

KW: Verify the salesforce connect button text present on the multi box frame.
    Verify Text     ${salesforce side panel connect text}

KW: Verify the salesforce How it works? button text present on the multi box frame.
    Verify Text     ${salesforce How it works?}

KW: Verify the connect button on the salesforce multi box frame is present.
    Verify Element      ${salesforce connect button xpath}

KW: Verify the How it works? button on the salesforce multi box frame is present.
    Verify Element      ${salesforce how it works button xpath}

KW: Click the connect button on the salesforce multi box frame is present.
    QWeb.Click Element      ${salesforce connect button xpath}

KW: Click the How it works? button on the salesforce multi box frame is present.
    QWeb.Click Element      ${salesforce how it works button xpath}

KW: Get the How it works? url and compare.
    ${salesforce How it works? intercom url}=   GetUrl
    Set Global Variable         ${salesforce How it works? intercom url}

KW: Varify the salesforce icon/logo on the salesforce multi box frame is present.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    ${salesforce is icon true or false}             Is Icon         ${integration_salesforce_image}salesforce_logo_multiboc.png
    Set Config    Retina Display       False    

KW: Second verification on the salesforce icon/logo on the salesforce multi box frame is present.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        Verify Icon         ${integration_salesforce_image}salesforce_logo_multiboc.png
    Set Config    Retina Display       False

KW: Verify the sidepanel upon clicking the connect button is opening.
    Verify Element      ${salesforce side panel entire panel xpath}

KW: Verify the side panel header Integrate with Salesforce is present.
    Verify Text     ${Integrate with Salesforce text}

KW: Varify the gurupoint+salesforce icon/logo on the salesforce sidepanel frame is present.
    # Set Config    Retina Display       True
    # Set Config    Log Matched Icons       True
    ${gurupoint+salesforce is icon true or false}             Is Icon         ${integration_salesforce_image}gurupoint_plus_salesforce.png
    Set Global Variable     ${gurupoint+salesforce is icon true or false}
    # Set Config    Retina Display       False    

KW: Second verification on the gurupoint+salesforce icon/logo on the salesforce sidepanel frame is present.
    # Set Config    Retina Display       True
    # Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        Verify Icon         ${integration_salesforce_image}gurupoint_plus_salesforce.png
    # Set Config    Retina Display       False

KW: Condition to check the gurupoint+salesforce icon/logo and validate the icon/logo.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    KW: Varify the gurupoint+salesforce icon/logo on the salesforce sidepanel frame is present.
    Run Keyword If      '${gurupoint+salesforce is icon true or false}'=='True'       Run Keyword         KW: Second verification on the gurupoint+salesforce icon/logo on the salesforce sidepanel frame is present.
    Run Keyword If      '${gurupoint+salesforce is icon true or false}'=='False'       Run Keyword         Fail
    Set Config    Retina Display       False

KW: To verify the side panel note.
    Verify All      ${salesforce note text}

KW: To verify info below the note on the sidepanel.
    Verify All      ${salesforce note2 text}

KW: To verify the INTEGRATIONS text is displayed.
    Verify Text     ${salesforce INTEGRATIONS : text}

KW: To verify the info below the INTEGRATIONS header.
    Verify All      ${salesforce INTEGRATIONS info}

KW: To verify the Connect with Salesforce header text is displayed.
    Verify Text     ${Connect with Salesforce text} 

KW: To verify the info below the Connect with Salesforce header.
    Verify All      ${Connect with Salesforce info} 

KW: Verify the connect button on the sidepanel is present.
    Verify Element      ${salesforce side panel connect button xpath}

KW: Verify the connect button text on the sidepanel is present.
    Verify Text      ${salesforce side panel connect text}

KW: Click the connect button on the sidepanel is present.
    QWeb.Click Element      ${salesforce side panel connect button xpath}

KW: Verify the salesforce authenticate iframe is present upon clicking the connect.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Element      ${salesforce authenticate iframe tray xpath}

KW: Verify the Salesforce authentication iframe text is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text     ${Salesforce authentication iframe text}

KW: Verify the Salesforce New authentication iframe text is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text     ${Salesforce authentication iframe New authentication text}

KW: Click the Salesforce New authentication iframe text is present.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text     ${Salesforce authentication iframe New authentication text}

KW: Verify the Salesforce cancel iframe text is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text     ${salesforce iframe Cancel button text}

KW: Click the Salesforce cancel iframe text is present.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text     ${salesforce iframe Cancel button text}

KW: Verify the Salesforce Create a new authentication iframe text is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text     ${salesforce Create a new authentication iframe text}

KW: Verify the Salesforce Your authentication name iframe text is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text     ${salesforce Your authentication name iframe label}

KW: Verify the Salesforce Salesforce instance type iframe text is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text     ${Salesforce instance type iframe label}

KW: Verify the Salesforce Create iframe text is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text     ${salesforce iframe Create button text}

KW: Click the Salesforce Create iframe text is present.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text     ${salesforce iframe Create button text}

KW: Verify the salesforce official login page Username label text is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text     ${salesforce official login page Username label}

KW: Verify the salesforce official login page Password label label text is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text     ${salesforce official login page Password label}

