*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

# Suite Setup     setup_teardown_func.KW: Launch Browser Common Keyword       ${firefox_browser}      ${admincmsurl}
# Suite Teardown  setup_teardown_func.KW: Browser TearDown
Suite Teardown  setup_teardown_func.KW: Close all browser TearDown

# Test Setup          Start Video Recording       alias=None      name=recording      fps=None        size_percentage=1       embed=True      embed_width=800px       monitor=1
# Test Teardown       Stop Video Recording

# Test Setup      KW: Maximize the Window.

*** Test Cases ***
TC1: [POSITIVE] [Branding module]- Interaction with branding module on the side hamburger.
    [Documentation]     Click on the Brand your event module to redirect inside the module and perform actions.
    ...     Switch to the cms, hover upon side panel, verify the branding element, click on branding module.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             Wait Until Keyword Succeeds         ${wait till}       ${execute for}        KW: Hover Element       ${gurupoint logo left side hamburger xpath}    ${waiting duration}     ${index}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Verify the branding side element is present.
    run keyword and continue on Failure             KW: Click on the Branding module.
    run keyword and continue on Failure             KW: Verify the brand your event sub module.
    run keyword and continue on Failure             KW: Click on the brand your event sub module.

TC2: [POSITIVE] [Branding page]- Interaction & verifying text, buttons or other elements are present within branding event listing page.
    [Documentation]     This tc's is going to verify all the info and elements present within the branding page.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Verify the text are present within the branding module.
    run keyword and continue on Failure             KW: Verify favicon indo are diaplaying.
    run keyword and continue on Failure             KW: Verify favicon element is present.
    run keyword and continue on Failure             KW: Verify vanity info is present.
    run keyword and continue on Failure             KW: Verify Event Landing Page info details.
    run keyword and continue on Failure             KW: Verify the event landing page toggle button is present.
    run keyword and continue on Failure             KW: Toggle off/on and verify wether it is working or not.
    run keyword and continue on Failure             KW: Sleep Mode           ${sleep seconds}
    run keyword and continue on Failure             KW: Toggle off/on and verify wether it is working or not.
    run keyword and continue on Failure             KW: Verify webcommunity Banners Page info details.
    run keyword and continue on Failure             KW: Verify the Add Banner button is present.
    run keyword and continue on Failure             KW: Verify Event Logo Page info details.
    run keyword and continue on Failure             KW: Verify the Event Logo button is present.
    run keyword and continue on Failure             KW: Verify Login Banners Page info details.
    run keyword and continue on Failure             KW: Verify the Login Banners button is present.
    run keyword and continue on Failure             KW: Scroll to element ADD BANNER button.
    run keyword and continue on Failure             KW: Verify Welcome Video Page info details.
    run keyword and continue on Failure             KW: Verify the Welcome Video button is present.
    # run keyword and continue on Failure             KW: Verify Colors Page info details.
    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Verify the section is present or not, then Click on any of the color from the list.
    run keyword and continue on Failure             KW: Verify Cover Images for Attendees info details.
    run keyword and continue on Failure             KW: Verify the Cover Images for Attendees button is present.

TC3: [POSITIVE] [Branding page]- Verifying the attendees cover image drag and drop is working or not.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Hover upon the 1st image that will be dragged to the destination place.
    run keyword and continue on Failure             KW: Drag the 1st image to the other position.
    run keyword and continue on Failure             KW: Refresh page.

TC4: [POSITIVE] [Branding page]- Playing around with favicon upload, positive and negative cases and verifying.
    [Documentation]     This tc's is going to upload favicon on the cms and will validate on the webcommunity side.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Verify favicon element is present.
    run keyword and continue on Failure             KW: Upload invalid image for the favicon.
    run keyword and continue on Failure             KW: Verify the invaid image upload alert.
    run keyword and continue on Failure             KW: Upload valid image for the favicon.
    run keyword and continue on Failure             KW: Click on the crop and save button.
    run keyword and continue on Failure             KW: uploaded image success alert.
    run keyword and continue on Failure             KW: Verify the uploaded favicon image on the cms.
    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Click on the save button.
    run keyword and continue on Failure             KW: Verify the green alert for Brand your event's settings have been updated.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword and continue on Failure             KW: Refresh page.
    Run Keyword                                     KW: Set Config Visibility   ${flag true}
    run keyword and continue on Failure             KW: Verify Element  ${reception module xpath}   ${waiting duration} ${flag true}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Click Element   ${reception module xpath}   ${waiting duration} ${flag true}    ${index}    ${flag true}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Condition to Verify the favicon on the webcommunity.

TC5: [POSITIVE] [Branding page]- Playing around with webcommunity Banners upload, positive and negative cases and verfying on the cms & webcommunity
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Sroll the page to the event landing page toggle button.
    run keyword and continue on Failure             KW: Upload valid webcommunity banner to show the cropping popup appears or not.
    run keyword and continue on Failure             KW: Click on the crop and save button.
    run keyword and continue on Failure             KW: uploaded image success alert.
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Upload invalid image for the webcommunity banner.
    run keyword and continue on Failure             KW: Verify the invaid image upload webcommunity banner alert.
    run keyword and continue on Failure             KW: Upload valid image for the webcommunity banner but will remove it to check the delete is working or not.
    run keyword and continue on Failure             KW: uploaded image success alert.
    run keyword and continue on Failure             KW: Hover upon the uploaded webcommunity banner image.
    run keyword and continue on Failure             KW: check wethere the delete icon is present.
    run keyword and continue on Failure             KW: Click the delete icon over the webcommunity banner.
    run keyword and continue on Failure             KW: Wait for the delete webcommunity popup alert.
    run keyword and continue on Failure             KW: Wait for the webcommunity banner delete permission popup text.
    run keyword and continue on Failure             KW: Verify the delete and cancel element is present on the webcommunity banner popup.
    run keyword and continue on Failure             KW: Click the delete button from the popup.
    run keyword and continue on Failure             KW: Reupload valid webcommunity banner again.
    run keyword and continue on Failure             KW: uploaded image success alert.
    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Click on the save button.
    run keyword and continue on Failure             KW: Verify the green alert for Brand your event's settings have been updated.
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Sroll the page to the event landing page toggle button.
    run keyword and continue on Failure             KW: Verify the uploaded webcommunity banner image on the cms.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword                                     KW: Set Config Visibility   ${flag true}
    run keyword and continue on Failure             KW: Verify Element  ${reception module xpath}   ${waiting duration} ${flag true}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Click Element   ${reception module xpath}   ${waiting duration} ${flag true}    ${index}    ${flag true}    ${flag true}    ${flag true}
    run keyword and continue on Failure             KW: Verify the event banner element is present or not.
    run keyword and continue on Failure             KW: Verify the event banner is icon logo in the reception page.



TC6: [POSITIVE] [Branding page]- Playing around with Event Logo upload, positive and negative cases and verfying on the cms & webcommunity.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Upload invalid image for the Event Logo.
    run keyword and continue on Failure             KW: Verify the invaid image upload Event Logo alert.
    run keyword and continue on Failure             KW: Upload valid image for the Event Logo, but file size is larger.
    run keyword and continue on Failure             KW: Verify the vaid image, but large size upload Event Logo alert.
    run keyword and continue on Failure             KW: Upload valid image for the Event Logo.
    run keyword and continue on Failure             KW: uploaded image success alert.
    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Click on the save button.
    run keyword and continue on Failure             KW: Verify the green alert for Brand your event's settings have been updated.
    run keyword and continue on Failure             KW: Sroll the page to the event logo text area.
    run keyword and continue on Failure             KW: Verify the uploaded event logo image on the cms.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Verify the event logo element is present or not.
    run keyword and continue on Failure             KW: Verify the event is icon logo in the reception page.
    run keyword and continue on Failure             KW: Verify the my profile element is present.
    run keyword and continue on Failure             KW: Click the my profile element is present.
    run keyword and continue on Failure             KW: Verify the logout element is present.
    run keyword and continue on Failure             KW: Click the my profile logout option.
    run keyword and continue on Failure             KW: Verify the email id field is present.
    run keyword and continue on Failure             KW: Verify the continue button is present.
    run keyword and continue on Failure             KW: Refresh page.


TC7: [POSITIVE] [Branding page]- Playing around with webcommunity login banner upload, positive and negative cases and verfying on the cms & webcommunity.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Upload invalid image for the webcommunity login banner.
    run keyword and continue on Failure             KW: Verify the invaid image upload webcommunity login banner alert.
    run keyword and continue on Failure             KW: Upload valid image for the webcommunity login banner 1.
    run keyword and continue on Failure             KW: uploaded image success alert.
    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Click on the save button.
    run keyword and continue on Failure             KW: Verify the green alert for Brand your event's settings have been updated.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Verify the email id field is present.
    run keyword and continue on Failure             KW: Verify the continue button is present.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Wait and verify the powered gurupoint logo element is present.
    run keyword and continue on Failure             KW: Verify event logo element is present on the login page.
    run keyword and continue on Failure             KW: Verify and compare the uploaded webcommunity login banner 1 image on the cms, in the webcommunity.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Sroll the page to the webcommunity login banner text area.
    run keyword and continue on Failure             KW: Sleep Mode          ${sleep seconds}
    run keyword and continue on Failure             KW: Upload valid image for the webcommunity login banner 2.
    run keyword and continue on Failure             KW: Wait for the webcommunity login banner crop popup.
    run keyword and continue on Failure             KW: Click on the crop and save button.
    run keyword and continue on Failure             KW: uploaded image success alert.
    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Click on the save button.
    run keyword and continue on Failure             KW: Verify the green alert for Brand your event's settings have been updated.
    run keyword and continue on Failure             KW: Sroll the page to the webcommunity login banner text area.
    run keyword and continue on Failure             KW: Sleep Mode          ${sleep seconds}
    run keyword and continue on Failure             KW: Verify the uploaded 2 webcommunity login banner image on the cms.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Verify the email id field is present.
    run keyword and continue on Failure             KW: Verify the continue button is present.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Verify and compare the uploaded webcommunity login banner 2 image on the cms, in the webcommunity.
    run keyword and continue on Failure             KW: Hover on the email field to pause and assert the image.
    run keyword and continue on Failure             KW: Check the event logo present on the webcommunity login page, then run the verification keyword.

TC8: [POSITIVE] [Branding page]- Playing around with webcommunity welcome video upload, positive and negative cases and verfying on the cms & webcommunity.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Sroll the page to the Welcome Video text area.
    run keyword and continue on Failure             KW: Click on the add video button.
    run keyword and continue on Failure             KW: Verify the add video right side panel exist or not.
    run keyword and continue on Failure             KW: Verify the video type drop down element is present or not.
    run keyword and continue on Failure             KW: Click the video type drop down to select the youtube or vimio.
    run keyword and continue on Failure             KW: Select youtube from the video type dropdown.
    run keyword and continue on Failure             KW: Verify the video link field element is present or not.
    run keyword and continue on Failure             KW: Type video link on the video link field.
    run keyword and continue on Failure             KW: Verify the video title field element is present or not.
    run keyword and continue on Failure             KW: Type video title on the video title field.
    run keyword and continue on Failure             KW: Click the video title field to type.
    run keyword and continue on Failure             KW: Verify the Video Description field element is present or not.
    run keyword and continue on Failure             KW: Click the Video Description field to type.
    run keyword and continue on Failure             KW: Type Video Description on the video title field.
    run keyword and continue on Failure             KW: Verify the PopUp After First Login checkbox is present or not.
    run keyword and continue on Failure             KW: Click the Popup after first login checkbox.
    run keyword and continue on Failure             KW: Verify the Show On Reception checkbox is present or not.
    run keyword and continue on Failure             KW: Click the Show On Reception checkbox.
    run keyword and continue on Failure             KW: Click on ADD button.
    run keyword and continue on Failure             KW: Sleep Mode           ${sleep seconds}
    run keyword and continue on Failure             KW: Verify the title, description, url is displaying.
    run keyword and continue on Failure             KW: Verify the uploaded youtube video image on the cms.
    run keyword and continue on Failure             KW: Hover upon the uploaded youtube video thumbnail.
    # run keyword and continue on Failure             KW: Check wethere the youtube play icon is present.
    run keyword and continue on Failure             KW: Click on the welcome video youtube video frmae on the cms.
    run keyword and continue on Failure             KW: Click image upon the uploaded youtube play to watch the video.
    run keyword and continue on Failure             KW: Verify the youtube video iframe is displayed.
    run keyword and continue on Failure             KW: Verify the close item is present in the youtube iframe.
    run keyword and continue on Failure             KW: Sleep for 10 sec to play the video.
    run keyword and continue on Failure             KW: Click the cross icon to close the youtube iframe.
    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Upload valid image for the Cover Images for Attendees.
    run keyword and continue on Failure             KW: Verify the uploaded Cover Images for Attendees on the cms.
    run keyword and continue on Failure             KW: Click on the save button.
    run keyword and continue on Failure             KW: Verify the green alert for Brand your event's settings have been updated.
    run keyword and continue on Failure             KW: Drag the 1st image to the extrem last position.
    run keyword and continue on Failure             KW: Sleep Mode           ${sleep seconds}
    run keyword and continue on Failure             KW: Click on the save button.
    run keyword and continue on Failure             KW: Verify the green alert for Brand your event's settings have been updated.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword and continue on Failure             KW: Refresh page.

TC9: [POSITIVE] [webcommunity page]- Interaction by login to verify branding by the uploaded user.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.
    run keyword and continue on Failure             KW: Verify the email id field is present.
    run keyword and continue on Failure             KW: Verify the continue button is present.
    run keyword and continue on Failure             KW: User login on webcommunity to verify all the branding assets.
    run keyword and continue on Failure             KW: Click on the continue button.
    run keyword and continue on Failure             KW: Verify the code field is present.
    run keyword and continue on Failure             KW: Verify the verify button is present.
    run keyword and continue on Failure             KW: Type default code.
    run keyword and continue on Failure             KW: Check the i agree checkbox.
    run keyword and continue on Failure             KW: Click on the verify button.
    run keyword and continue on Failure             KW: Wait for the element on the webcommunity page.

TC10: [POSITIVE] [webcommunity On-Boarding page]- Filling data on the on-boarding page.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Scrolling On-Boarding profile details to the bottom page.
    run keyword and continue on Failure             KW: On-Boarding profile details next button.
    run keyword and continue on Failure             KW: Click on the save button on the Select Language & Time zone popup.

TC11: [POSITIVE] [webcommunity On-Boarding page]- Verify the youtube popup webcommunity side.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.
    run keyword and continue on Failure             KW: Verify the youtube frame pops up soon after the login.
    run keyword and continue on Failure             KW: Verify the title, description, url is displaying on the webcommunity youtube popup.
    run keyword and continue on Failure             KW: Sleep for 10 sec to play the video.
    run keyword and continue on Failure             KW: Click the cross element to close the youtube popup on the webcommunity.
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Verify the event logo element is present or not.
    run keyword and continue on Failure             KW: Verify the event is icon logo in the reception page.
    run keyword and continue on Failure             KW: Verify the event banner element is present or not.
    run keyword and continue on Failure             KW: Verify the event banner is icon logo in the reception page.
    run keyword and continue on Failure             KW: Scroll to the video frame title area on the reception page.
    run keyword and continue on Failure             KW: Verify the large youtube video title area is present in the reception page.
    run keyword and continue on Failure             KW: Verify the large youtube video area is present in the reception page.
    run keyword and continue on Failure             KW: Verify the title, description, url is displaying on the webcommunity youtube reception bottom page.
    run keyword and continue on Failure             KW: Scroll to the video frame description area on the reception page.
    run keyword and continue on Failure             KW: Verify the event youtube image is in the reception page.
    run keyword and continue on Failure             KW: Verify the small youtube video within large area is present in the reception page.
    run keyword and continue on Failure             KW: Click the small area youtube video within large area is present in the reception page.
    run keyword and continue on Failure             KW: Sleep for 10 sec to play the video.
    run keyword and continue on Failure             KW: Click the cross element to close the youtube popup on the webcommunity for the 2nd time.

TC12: [POSITIVE] [cms Branding > Welcome Video]- Delete the added welcome video from the cms and verify the element absence on cms and webcommunity.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Sroll the page to the Welcome Video text area.
    run keyword and continue on Failure             KW: Hover upon the uploaded youtube video thumbnail.
    run keyword and continue on Failure             KW: Verify the delete option is present in the welcome video from cms.
    run keyword and continue on Failure             KW: Delete welcome video from cms.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe appears.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe texts appearence.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe Cancel button appearence.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe Delete button appearence.
    run keyword and continue on Failure             KW: Click on the welcome video delete popup iframe Delete button appearence.
    run keyword and continue on Failure             KW: Verify the welcome video youtube video frame is deleted from the cms.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Verify the welcome video absence on webcommunity reception page.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.

TC13: [POSITIVE] [cms Branding > webcommunity Banners]- Delete the added webcommunity Banners from the cms and verify the element absence on cms and webcommunity.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.
    run keyword and continue on Failure             KW: Scroll to webcommunity Banners section.
    run keyword and continue on Failure             KW: Hover upon the uploaded webcommunity banner image.
    run keyword and continue on Failure             KW: check wethere the delete icon is present.
    run keyword and continue on Failure             KW: Click the delete icon over the webcommunity banner.
    run keyword and continue on Failure             KW: Wait for the delete webcommunity popup alert.
    run keyword and continue on Failure             KW: Wait for the webcommunity banner delete permission popup text.
    run keyword and continue on Failure             KW: Verify the delete and cancel element is present on the webcommunity banner popup.
    run keyword and continue on Failure             KW: Click the delete button from the popup.
    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Click on the save button.
    run keyword and continue on Failure             KW: Verify the green alert for Brand your event's settings have been updated.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Verify the webcommunity Banners absence on webcommunity reception page.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.

TC14: [POSITIVE] [cms Branding > Event Logo && Favicon]- Delete the added webcommunity Event Logo & favicon from the cms and verify the element absence on cms and webcommunity.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Scroll to webcommunity Event Logo section.
    run keyword and continue on Failure             KW: Hover upon the uploaded webcommunity Event Logo image.
    # run keyword and continue on Failure             KW: Hover upon the delete option, which is a added webcommunity Event Logo image once hovered.
    run keyword and continue on Failure             KW: Click the delete icon over the webcommunity Event Logo image.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe appears.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe texts appearence.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe Cancel button appearence.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe Delete button appearence.
    run keyword and continue on Failure             KW: Click on the welcome video delete popup iframe Delete button appearence.
    run keyword and continue on Failure             KW: Verify the Event Logo image frame is deleted from the cms.
    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Click on the save button.
    run keyword and continue on Failure             KW: Verify the green alert for Brand your event's settings have been updated.
    run keyword and continue on Failure             KW: Sroll the page to the event logo text area.
    run keyword and continue on Failure             KW: Verify the Event Logo image frame is deleted from the cms.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Verify no event logo element is present on the login page.    
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Hover upon the uploaded webcommunity favicon Logo image.
    run keyword and continue on Failure             KW: Click upon the uploaded webcommunity favicon Logo image.
    run keyword and continue on Failure             KW: Click on the Delete option of favicon log image from cms.
    run keyword and continue on Failure             KW: Verify the info present on the favicon popup for deleteing.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe Cancel button appearence.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe Delete button appearence.
    run keyword and continue on Failure             KW: Click on the welcome video delete popup iframe Delete button appearence.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Verify the favicon log image is deleted from the cms.
    run keyword and continue on Failure             KW: Verify favicon element is present.
    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Click on the save button.
    run keyword and continue on Failure             KW: Verify the green alert for Brand your event's settings have been updated.
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Verify the favicon log image is deleted from the cms.
    run keyword and continue on Failure             KW: Verify favicon element is present.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Verify the Event Logo image absence on webcommunity reception page.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Verify the my profile element is present.
    run keyword and continue on Failure             KW: Click the my profile element is present.
    run keyword and continue on Failure             KW: Verify the logout element is present.
    run keyword and continue on Failure             KW: Click the my profile logout option.
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Verify the email id field is present.
    run keyword and continue on Failure             KW: Verify the continue button is present.
    run keyword and continue on Failure             KW: Verify no event logo element is present on the login page.

TC15: [POSITIVE] [cms Branding > webcommunity Login Banner]- Delete the added webcommunity login banner from the cms and verify the element absence on cms and webcommunity.
    [Documentation]     This tc's is going perform Login page "CREATE AN ACCOUNT" verification and validation with redirecting.
    [Tags]              positive
#    Skip     Skipping the test case
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # run keyword and continue on Failure             KW: Pause the execution.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Sroll the page to the webcommunity login banner text area.
    run keyword and continue on Failure             KW: Hover upon the uploaded webcommunity uploaded login banner image.
    run keyword and continue on Failure             KW: Click on the Delete option of webcommunity uploaded login banner image from cms.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe texts appearence.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe Cancel button appearence.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe Delete button appearence.
    run keyword and continue on Failure             KW: Click on the welcome video delete popup iframe Delete button appearence.
    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Click on the save button.
    run keyword and continue on Failure             KW: Verify the green alert for Brand your event's settings have been updated.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Verify the email id field is present.
    run keyword and continue on Failure             KW: Verify the continue button is present.
    # run keyword and continue on Failure             KW: Condition to verify and validate by saving, accepting or rejecting all webcommunity cookies.
    run keyword and continue on Failure             KW: Wait and verify the login banner 1st image radio or circle element is not present.
    run keyword and continue on Failure             KW: Wait and verify the login banner 2nd image radio or circle element is not present.
    run keyword and continue on Failure             KW: Verify and compare the uploaded event webcommunity login banner 2 image on the webcommunity login page.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab1}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Sroll the page to the webcommunity login banner text area.
    run keyword and continue on Failure             KW: Hover upon the uploaded webcommunity uploaded login banner image.
    run keyword and continue on Failure             KW: Click the delete button on the last webcommunity login banner on the cms.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe texts appearence.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe Cancel button appearence.
    run keyword and continue on Failure             KW: Verify the welcome video delete popup iframe Delete button appearence.
    run keyword and continue on Failure             KW: Click on the welcome video delete popup iframe Delete button appearence.
    run keyword and continue on Failure             KW: Verify the last webcommunity login banner is not present after deleting from the cms.
    run keyword and continue on Failure             KW: Scroll to bottom of the branding page.
    run keyword and continue on Failure             KW: Click on the save button.
    run keyword and continue on Failure             KW: Verify the green alert for Brand your event's settings have been updated.
    run keyword and continue on Failure             KW: Switch to tab.      ${tab2}
    run keyword and continue on Failure             KW: Refresh page.
    run keyword and continue on Failure             KW: Get current page title
    run keyword and continue on Failure             KW: Verify the email id field is present.
    run keyword and continue on Failure             KW: Verify the continue button is present.
    run keyword and continue on Failure             KW: Wait and verify the powered gurupoint logo element is present.
    run keyword and continue on Failure             KW: Check the boolean value for default webcommunity login banner.
    run keyword and continue on Failure             KW: Verify and compare the default event webcommunity login banner gurupoint has on the webcommunity login page.