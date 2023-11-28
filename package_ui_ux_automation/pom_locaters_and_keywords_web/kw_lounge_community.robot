*** Settings ***
Documentation   This setting is for the lounge webcommunity module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${email field xpath}                                  xpath\=//input[@id\='email']
${continue button xpath}                              xpath\=//button[normalize-space()\='Continue With Email']
${code filed xpath}                                   xpath\=//input[@id\='codeVal']
${verify button xpath}                                xpath\=//button[normalize-space()\='Verify']
${login i agree checkbox}                             xpath\=//body/div[@id\='root']/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/label[1]
${lounge table seat 1}                                xpath\=(//div[@class\='seatSelection '])[1]
${lounge table seat 4}                                xpath\=(//div[contains(@class,'seatSelection')])[4]
${join lounge modal popup xpath}                      xpath\=//body/div[@id\='modalRoot']/div/div/div[@role\='dialog']/div/div/div[1]
${camera icon button xpath}                           xpath\=//body//div[@id\='modalRoot']//div[@role\='dialog']//div//div//div//div//div//button[2]
${audio icon button xpath}                            xpath\=//body//div[@id\='modalRoot']//div[@role\='dialog']//div//div//div//div//div//button[1]
${test devices button xpath}                          xpath\=//button[normalize-space()\='Test Devices']
${join button xpath}                                  xpath\=//button[normalize-space()\='Join']
${leave lounge button xpath}                          xpath\=//button[@data-tooltip\='Leave Table']
${test audio play pause function xpath}               xpath\=//div[@role\='dialog']//div//div//div//div//div//div//div//div//div//div//div//audio
${within lounge leave button xpath}                   xpath\=//button[@data-tooltip\='Leave']
${within lounge turnoff audio button xpath}           xpath\=//button[@data-tooltip\='Turn off microphone']
${within lounge turnoff camera button xpath}          xpath\=//button[@data-tooltip\='Turn off camera']
${within lounge present now button xpath}             xpath\=//button[@data-tooltip\='Present now']
${within lounge switch view button xpath}             xpath\=//label[@data-tooltip\='Switch to meeting view']
${alert left for lounge xpath}                        xpath\=//p[contains(text(),'Left lounge successfully')]

${lounge leave permission pop up element xpath}         xpath\=//div[@id\='modalRoot']//div[2]
# Are you sure you want to leave?
${lounge leave permission popup button element xpath}       xpath\=//div[@role\='dialog']//div//div//div//div//div//button[@type\='button']
# Leave the Lounge
${lounge leave permission popup close or X element xpath}       xpath\=//body/div[@id\='modalRoot']/div/div/div[@role\='dialog']/div/div/button[1]


# //body/div[@id='modalRoot']/div/div/div[@aria-label='Conformation modal']/div[1]
# Give permission to hear the discussion
# Continue

${chrome play audio image}                                     ${lounge_images}chrome_lounge_sound_test_play_icon.png
${firefox play audio image}                                     ${lounge_images}firefox_lounge_sound_test_play_icon.png
${checkbox image}                                       ${webcommunity_login_page}webcommunity_login_i_agree_checkbox.png

***Keywords***
KW: Go to the webcommunity site.
    Wait Until Keyword Succeeds         15sec       1sec        QWeb.Go To       ${event webcommunity url}

KW: Verify the email id field is present.
    Wait Until Keyword Succeeds         15sec       1sec        Verify Element      ${email field xpath}

KW: Click the email id field is present.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element     ${email field xpath}

KW: Type email id stored on the excelsheet.
    Wait Until Keyword Succeeds         30sec       10sec        Type text       ${email field xpath}        ${read_email}

KW: Type gmail id saved as a variable.
    Wait Until Keyword Succeeds         30sec       10sec        Type text       ${email field xpath}        ${email}

KW: Verify the continue button is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Element      ${continue button xpath}

KW: Click on the continue button.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${continue button xpath}

KW: Verify the code field is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Element      ${code filed xpath}

KW: Verify the verify button is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Element      ${verify button xpath}

KW: Type default code.
    Wait Until Keyword Succeeds         30sec       10sec        Type text       ${code filed xpath}     123456

KW: Check the i agree checkbox.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Text     I agree to the 
    Wait Until Keyword Succeeds         30sec       10sec        Hover Text      I agree to the 
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text      I agree to the      js=true

KW: Click on the verify button.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       ${verify button xpath}

KW: Scroll to the bottom of the page next on the on-boarding profile page.
    Wait Until Keyword Succeeds         30sec       10sec        Scroll Text     Next       anchor=Previous

KW: Scroll to the bottom of the page finish on the on-boarding profile page.
    Wait Until Keyword Succeeds         30sec       10sec        Scroll Text     Finish     anchor=Previous

KW: Scrolling On-Boarding profile details to the bottom page.
    ${next_button}=         Is Text     Next
    ${finish_button}=       Is Text     Finish

    Run Keyword If      '${next_button}'=='True' and '${finish_button}'=='False'        Run Keyword     KW: Scroll to the bottom of the page next on the on-boarding profile page.
    Run Keyword If      '${next_button}'=='False' and '${finish_button}'=='True'        Run Keyword     KW: Scroll to the bottom of the page finish on the on-boarding profile page.

KW: Click on the next button on the on-boarding profile page.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text     Next       anchor=Previous     js=true

KW: Click on the finish button on the on-boarding profile page.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text     Finish     anchor=Previous     js=true

KW: On-Boarding profile details next button.
    ${next_button}=         Is Text     Next
    ${finish_button}=       Is Text     Finish

    Run Keyword If      '${next_button}'=='True' and '${finish_button}'=='False'      Run Keyword     KW: Click on the next button on the on-boarding profile page.
    Run Keyword If      '${next_button}'=='False' and '${finish_button}'=='True'        Run Keyword     KW: Click on the finish button on the on-boarding profile page.

KW: Select the add cover page.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element       xpath\=//body//div[@id\='root']//div[@data-testid\='boardProfile']//div//div//div//div//div//div//div[4]//div[1]//img[1]

KW: Click on the save button on the Select Language & Time zone popup.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text     Save        anchor=You can change this setting later from the profile dropdown

KW: Click on the lounge module on the top bar webcommunity page.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text     Lounge        anchor=Rooms

KW: Verify lounge table seat one is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Element          ${lounge table seat 1}
    Wait Until Keyword Succeeds         30sec       10sec        Hover Element           ${lounge table seat 1}

KW: Verify lounge table seat fourth is present.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Element          ${lounge table seat 4}
    Wait Until Keyword Succeeds         30sec       10sec        Hover Element           ${lounge table seat 4}

KW: Click the lounge table seat one.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element           ${lounge table seat 1}

KW: Click the lounge table seat four.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element           ${lounge table seat 4}

KW: Verify the alert is present or the popup.
    Wait Until Keyword Succeeds         30sec       10sec        Is Alert        2s

KW: Expect join lounge modal popups.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${join lounge modal popup xpath}
    Wait Until Keyword Succeeds         30sec       10sec        Hover Element           ${join lounge modal popup xpath}

KW: Expect the audio button is present.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${audio icon button xpath}
    Wait Until Keyword Succeeds         30sec       10sec        Hover Element           ${audio icon button xpath}

KW: Expect the video button is present.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${camera icon button xpath}
    Wait Until Keyword Succeeds         30sec       10sec        Hover Element           ${camera icon button xpath}

KW: Expect the test device button is present.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${test devices button xpath}
    Wait Until Keyword Succeeds         30sec       10sec        Hover Element           ${test devices button xpath}

KW: Expect the join button is present.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${join button xpath}
    Wait Until Keyword Succeeds         30sec       10sec        Hover Element           ${join button xpath}

KW: Click on the test device button.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text     Test Devices        anchor=Join

KW: Click on the join button to join the lounge.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text       Join      anchor=Test Devices

KW: Check browser compability test.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Text       Passed      anchor=Browser Compatibility

KW: Check camera compability test.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Text       Passed      anchor=Camera

KW: Check Microphone compability test.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Text       Passed      anchor=Microphone

KW: Check Speaker compability test.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Text       Passed      anchor=Speaker

KW: Verify the audio sound section is present.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${test audio play pause function xpath}

KW: Chrome verify icon, click icon and verify mins.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        Verify Icon        ${chrome play audio image}      #template_res_w=23     browser_res_w=1680         #1680 #3360
    Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        Click Icon        ${chrome play audio image}       #template_res_w=23     browser_res_w=1680         #1680 #3360
    SetConfig    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Is Text        0:06        timeout=10s
    Set Config    Retina Display       False

KW: Firefox verify icon, click icon and verify mins.
    Set Config    Retina Display       True
    SetConfig    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        Verify Icon        ${firefox play audio image}     #template_res_w=27     browser_res_w=1680           #1680 #3360
    SetConfig    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        Click Icon        ${firefox play audio image}      #template_res_w=27     browser_res_w=1680           #1680 #3360
    SetConfig    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Is Text        0:06        timeout=10s
    Set Config    Retina Display       False

KW: Click on the audio play icon to test the sound.
    ${chrome play icon}         Is Icon     ${chrome play audio image}
    ${firefox play icon}        Is Icon     ${firefox play audio image}
    Run Keyword If      '${chrome play icon}'=='True'       Run Keyword         KW: Chrome verify icon, click icon and verify mins.
    Run Keyword If      '${firefox play icon}'=='True'       Run Keyword        KW: Firefox verify icon, click icon and verify mins.

KW: Click on yes on the speaker compatibility test.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text       Yes      anchor=No

KW: Check Resolution compability test.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Text       Passed      anchor=Resolution

KW: Check Connectivity compability test.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Text       Passed      anchor=Connectivity
    
KW: compability checking finished alert.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Text        Device compatibility check finished      anchor=Finish

KW: compability checking finished button text.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Text        Finish      anchor=Device compatibility check finished

KW: Click on finished button on the modal.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Text        Finish      anchor=Device compatibility check finished

KW: Expect the leave button is present.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${leave lounge button xpath}
    Wait Until Keyword Succeeds         30sec       10sec        Hover Element           ${leave lounge button xpath}

KW: Click the lounge leave button in the listing.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element        ${leave lounge button xpath}

KW: Expect the leave button is present below the lounge table.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${within lounge leave button xpath}

KW: Mouse hover upon the leave element within the lounge.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Hover Element        ${within lounge leave button xpath}

KW: Click on the leave button with in the lounge table below the screen.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element        ${within lounge leave button xpath}

KW: Expect the microphone button is present below the lounge table
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${within lounge turnoff audio button xpath}

KW: Mouse hover the microphone element within the lounge.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Hover Element        ${within lounge turnoff audio button xpath}

KW: Click on the microphone button with in the lounge table below the screen.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element        ${within lounge turnoff audio button xpath}

KW: Expect the camera button is present below the lounge table
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${within lounge turnoff camera button xpath}

KW: Mouse hover the camera element within the lounge.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Hover Element        ${within lounge turnoff camera button xpath}

KW: Click on the camera button with in the lounge table below the screen.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element        ${within lounge turnoff camera button xpath}

KW: Expect the present now button is present below the lounge table
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${within lounge present now button xpath}

KW: Mouse hover the present now element within the lounge.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Hover Element        ${within lounge present now button xpath}

KW: Click on the present now button with in the lounge table below the screen.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element        ${within lounge present now button xpath}

KW: Expect the switching view button is present below the lounge table
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${within lounge switch view button xpath}

KW: Mouse hover the switching view element within the lounge.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Hover Element        ${within lounge switch view button xpath}

KW: Click on the switching view button with in the lounge table below the screen.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element        ${within lounge switch view button xpath}

KW: Verify alert present after leaving the lounge.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element Text       ${alert left for lounge xpath}         Left lounge successfully

KW: Verify the lounge leaving permission popup appearence.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${lounge leave permission pop up element xpath}

KW: Verify the lounge leaving permission button appearence on popup.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Element        ${lounge leave permission popup button element xpath}

KW: Click the lounge leaving permission button appearence on popup.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element        ${lounge leave permission popup button element xpath}

KW: Verify the lounge leaving permission text(Are you sure you want to leave?) appearence on popup.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Text       Are you sure you want to leave?      anchor=Leave the Lounge

KW: Verify the lounge leaving permission text(Leave the Lounge) appearence on popup.
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify Text       Leave the Lounge      anchor=Are you sure you want to leave?

