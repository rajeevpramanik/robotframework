*** Settings ***
Documentation   This setting is for the branding module image uploading.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${first webcommunity login banner image xpath}                     xpath\=//body/div[@id\='root']/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/img[1]
${Second webcommunity login banner image xpath}                    xpath\=//body/div[@id\='root']/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/img[1]

${youtube frame popup webcommunity xpath}                          xpath\=//body/div[@id\='modalRoot']/div/div/div[@role\='dialog']/div/div[2]
${youtube frame popup close webcommunity xpath}                    xpath\=//div[@role\='dialog']//div//div//button[@type\='button']

${event logo after login reception page xpath}                  xpath\=//div[contains(@class,'eventLogoBox')]//div[contains(@class,'eventLogoWrapper')]//div[contains(@class,'slick-slider slick-initialized')]//div[contains(@class,'slick-list')]//div[contains(@class,'slick-track')]//div[contains(@class,'slick-slide slick-active slick-current')]//div//div//img[contains(@alt,'event-logo')]
${event banner after login reception page xpath}                xpath\=//img[contains(@alt,'Event Banner')]
${event video title reception webcommunity xpath}                  xpath\=//div[@id\='root']//div//div//div//div//div//section//div//div//div//div//h2
${event video description reception webcommunity xpath}            xpath\=//div[@id\='root']//div//div//div//div//div//section//div//div//div//div//p
${event welcome video full area after login reception page xpath}       xpath\=//div[@class\='videoArea']//div[@class\='row']

${event welcome video small within area after login reception page xpath}       xpath\=//div[@id\='root']//div//div//div//div//div//section//div//div//div//div//div//div//button[@type\='button']//*[name()\='svg']

${youtube opened 2nd time close the popup xpath}                xpath\=//body/div[@id\='modalRoot']/div/div/div[@role\='dialog']/div/div[1]

${youtube popup video title xpath}                              xpath\=//div[@role\='dialog']//div//div//div//h2
${youtube popup video description xpath}                        xpath\=//div[@role\='dialog']//div//div//div//p
${webcommunity banner on the webcommunity reception page xpath}       xpath\=(//img[@alt\='Event Banner'])[1]
${webcommunity event logo reception page no element xpath}         xpath\=(//img[contains(@alt,'event-logo')])[1]
${webcommunity event logo no elements on the login page xpath}     xpath\=//section[@id\='sliderSection']//div//div//div//div//div//div//div//div//div//img[@alt\='Event banner']
${webcommunity login banner 1st image element xpath}               xpath\=//img[@class\='img-fluid ']
${webcommunity login banner 2nd image element xpath}               xpath\=//div[3]//div[1]//div[1]//img[1]

${webcommunity login banner 1st image radio or circle element xpath}       xpath\=//button[normalize-space()\='1']
${webcommunity login banner 2nd image radio or circle element xpath}       xpath\=//button[normalize-space()\='2']

${webcommunity login page powered gurupoint logo element xpath}           xpath\=//div[@class\='poweredBlock']

***Keywords***
KW: Wait and verify the powered gurupoint logo element is present.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${webcommunity login page powered gurupoint logo element xpath}

KW: Wait and verify the login banner 1st image radio or circle element.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${webcommunity login banner 1st image radio or circle element xpath}

KW: Wait and verify the login banner 1st image radio or circle element is not present.
    Wait Until Keyword Succeeds         10sec       1sec        Verify No Element      ${webcommunity login banner 1st image radio or circle element xpath}

KW: Wait and click the login banner 1st image radio or circle element.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${webcommunity login banner 1st image radio or circle element xpath}

KW: Wait and verify the login banner 2nd image radio or circle element.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${webcommunity login banner 2nd image radio or circle element xpath}

KW: Wait and verify the login banner 2nd image radio or circle element is not present.
    Wait Until Keyword Succeeds         10sec       1sec        Verify No Element      ${webcommunity login banner 2nd image radio or circle element xpath}

KW: Wait and click the login banner 2nd image radio or circle element.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${webcommunity login banner 2nd image radio or circle element xpath}

KW: Wait and verify the login banner 1st image element.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${webcommunity login banner 1st image element xpath}

KW: Hover on the login banner 1st image element.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Hover Element      xpath\=(//img[@alt\='Event banner'])[2]

KW: Wait and verify the login banner 2nd image element.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${webcommunity login banner 2nd image element xpath}

KW: Click on the login banner 2nd image element.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Hover Element      ${webcommunity login banner 2nd image element xpath}

KW: Verify and compare the uploaded event logo on the webcommunity login page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Icon         ${branding_uploaded_folder_path}webcommunity_event_logo.png      #template_res_w=244     browser_res_w=1680         #1680 #3360

KW: Check the event logo present on the webcommunity login page, then run the verification keyword.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    # ${Check event logo on the webcommunity}        Is Icon     ${branding_uploaded_folder_path}webcommunity_event_logo.png      #template_res_w=244     browser_res_w=1680         #1680 #3360
    # Run Keyword If      '${Check event logo on the webcommunity}'=='True'       Run Keyword         KW: Verify and compare the uploaded event logo on the webcommunity login page.
    KW: Verify and compare the uploaded event logo on the webcommunity login page.
    Set Config    Retina Display       False

KW: Verify and compare the uploaded event webcommunity login banner 1 image on the webcommunity login page.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         10sec       1sec        Verify Icon         ${branding_uploaded_folder_path}webcommunity_side_login_banner1.png      timeout=15s   #template_res_w=712     browser_res_w=1680         #1680 #3360
    Set Config    Retina Display       False

KW: Verify and compare the uploaded event webcommunity login banner 2 image on the webcommunity login page.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         10sec       1sec        Verify Icon         ${branding_uploaded_folder_path}webcommunity_side_login_banner2.png      timeout=15s   #template_res_w=817     browser_res_w=1680         #1680 #3360
    Set Config    Retina Display       False

KW: To verify the icon of the default webcommunity login banner.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Icon         ${branding_folder_path}default_login_banner.png      timeout=15s   #template_res_w=817     browser_res_w=1680         #1680 #3360

KW: Check the boolean value for default webcommunity login banner.
    ${Check the default webcommunity login banner on the webcommunity}        Is Icon     ${branding_folder_path}default_login_banner.png      #template_res_w=244     browser_res_w=1680         #1680 #3360
    Set Global Variable     ${Check the default webcommunity login banner on the webcommunity}

KW: Verify and compare the default event webcommunity login banner gurupoint has on the webcommunity login page.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    # ${Check the default webcommunity login banner on the webcommunity}        Is Icon     ${branding_folder_path}default_login_banner.png      #template_res_w=244     browser_res_w=1680         #1680 #3360
    # KW: Check the boolean value for default webcommunity login banner.
    Run Keyword If      '${Check the default webcommunity login banner on the webcommunity}'=='True'       Run Keyword         KW: To verify the icon of the default webcommunity login banner.
    # Wait Until Keyword Succeeds         10sec       1sec        Verify Icon         ${branding_folder_path}default_login_banner.png      timeout=15s   #template_res_w=817     browser_res_w=1680         #1680 #3360
    Set Config    Retina Display       False

KW: Check and give the boolean results webcommunity login banner 1 image.
    ${Check webcommunity login banner 1 on the webcommunity only 1st image}       Wait Until Keyword Succeeds         15sec       1sec        Is Icon     ${branding_uploaded_folder_path}webcommunity_side_login_banner1.png      #template_res_w=712     browser_res_w=1680         #1680 #3360
    Set Global Variable     ${Check webcommunity login banner 1 on the webcommunity only 1st image}

KW: Verify and compare the uploaded webcommunity login banner 1 image on the cms, in the webcommunity.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    KW: Wait and verify the login banner 1st image element.
    KW: Check and give the boolean results webcommunity login banner 1 image.
    # Run Keyword If      '${Check webcommunity login banner 1 on the webcommunity only 1st image}'=='True'       Run Keyword         KW: Verify and compare the uploaded event webcommunity login banner 1 image on the webcommunity login page.
    # Run Keyword If      '${Check webcommunity login banner 1 on the webcommunity only 1st image}'=='False'       Run Keyword         Fail
    KW: Verify and compare the uploaded event webcommunity login banner 1 image on the webcommunity login page.
    Set Config    Retina Display       False

KW: Check and give the boolean results webcommunity login banner 2 image.
    ${Check webcommunity login banner 2 on the webcommunity only 2nd image}        Wait Until Keyword Succeeds         15sec       1sec        Is Icon     ${branding_uploaded_folder_path}webcommunity_side_login_banner2.png      #template_res_w=817     browser_res_w=1680         #1680 #3360
    Set Global Variable     ${Check webcommunity login banner 2 on the webcommunity only 2nd image}
    
KW: Verify and compare the uploaded webcommunity login banner 2 image on the cms, in the webcommunity.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    KW: Wait and verify the login banner 1st image radio or circle element.
    KW: Wait and click the login banner 1st image radio or circle element.
    KW: Wait and verify the login banner 1st image element.
    KW: Check and give the boolean results webcommunity login banner 1 image.
    # Run Keyword If      '${Check webcommunity login banner 1 on the webcommunity only 1st image}'=='True'       Run Keyword         KW: Verify and compare the uploaded event webcommunity login banner 1 image on the webcommunity login page.
    KW: Verify and compare the uploaded event webcommunity login banner 1 image on the webcommunity login page.
    KW: Wait and verify the login banner 2nd image radio or circle element.
    KW: Wait and click the login banner 2nd image radio or circle element.
    KW: Wait and verify the login banner 2nd image element.
    KW: Check and give the boolean results webcommunity login banner 2 image.
    KW: Verify and compare the uploaded event webcommunity login banner 2 image on the webcommunity login page.
    # Run Keyword If      '${Check webcommunity login banner 2 on the webcommunity only 2nd image}'=='True'       Run Keyword         KW: Verify and compare the uploaded event webcommunity login banner 2 image on the webcommunity login page.

    # Run Keyword If      '${Check webcommunity login banner 2 on the webcommunity only 2nd image}'=='False'       Run Keyword         Fail
    # Run Keyword If      '${Check webcommunity login banner 1 on the webcommunity only 1st image}'=='False'       Run Keyword         Fail
    Set Config    Retina Display       False

KW: Hover on the email field to pause and assert the image.
    Wait Until Keyword Succeeds         10sec       1sec        Hover Element       ${email field xpath}         index=1     partial_match=True

KW: Hover on the 1st login banner image to pause and assert the image.
    Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         10sec       1sec        Hover Element       ${first webcommunity login banner image xpath}        index=1     partial_match=False

KW: Hover on the 2nd login banner image to pause and assert the image.
    Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         10sec       1sec        Hover Element       ${Second webcommunity login banner image xpath}        index=1     partial_match=False

KW: Verify the webcommunity banner image element is present or not.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${first webcommunity login banner image xpath}

KW: User login on webcommunity to verify all the branding assets.
    # KW: Create an email id.
    Wait Until Keyword Succeeds         10sec       1sec        Type Text       ${email field xpath}       ${generated email}

KW: Verify the youtube frame pops up soon after the login.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${youtube frame popup webcommunity xpath}

KW: Click the cross element to close the youtube popup on the webcommunity.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${youtube frame popup close webcommunity xpath}

KW: Click the cross element to close the youtube popup on the webcommunity for the 2nd time.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${youtube opened 2nd time close the popup xpath}        index=1     partial_match=False

KW: Verify the title, description, url is displaying on the webcommunity youtube popup.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text     ${youtube popup video title xpath}      ${video title is}       anchor=We help event organizers save their time, effort, and resources by enabling them to host global place virtually.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text     ${youtube popup video description xpath}     ${video description is}     anchor=gurupoint Virtual Event Platform

KW: Verify the title, description, url is displaying on the webcommunity youtube reception bottom page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text     ${event video title reception webcommunity xpath}      ${video title is}       anchor=We help event organizers save their time, effort, and resources by enabling them to host global place virtually.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text     ${event video description reception webcommunity xpath}     ${video description is}     anchor=gurupoint Virtual Event Platform

KW: Verify the event logo element is present or not.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${event logo after login reception page xpath}

KW: Verify the event banner element is present or not.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${event banner after login reception page xpath}

KW: Scroll to the video frame description area on the reception page.
    Wait Until Keyword Succeeds         10sec       1sec        Scroll Text      We help event organizers save their time, effort, and resources by enabling them to host global place virtually.      anchor=gurupoint Virtual Event Platform

KW: Scroll to the video frame title area on the reception page.
    Wait Until Keyword Succeeds         10sec       1sec        Scroll Text     gurupoint Virtual Event Platform       anchor=We help event organizers save their time, effort, and resources by enabling them to host global place virtually.

KW: Verify the large youtube video title area is present in the reception page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${event video title reception webcommunity xpath}

KW: Verify the large youtube video area is present in the reception page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${event welcome video full area after login reception page xpath}

KW: Verify the small youtube video within large area is present in the reception page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${event welcome video small within area after login reception page xpath}

KW: Click the small area youtube video within large area is present in the reception page.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${event welcome video small within area after login reception page xpath}

KW: Verify icon the event logo in the reception page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Icon         ${branding_uploaded_folder_path}reception_page_event_logo.png      #template_res_w=190     browser_res_w=1680         #1680 #3360

KW: Check is icon of webcommunity where event logo is present.
    ${Check webcommunity event logo in the reception area}        Is Icon     ${branding_uploaded_folder_path}reception_page_event_logo.png      #template_res_w=190     browser_res_w=1680         #1680 #3360
    Set Global Variable     ${Check webcommunity event logo in the reception area}

KW: Verify the event is icon logo in the reception page.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    # Wait Until Keyword Succeeds         10sec       1sec        KW: Check is icon of webcommunity where event logo is present.
    # Run Keyword If      '${Check webcommunity event logo in the reception area}'=='True'       Run Keyword         KW: Verify icon the event logo in the reception page.
    # Run Keyword If      '${Check webcommunity event logo in the reception area}'=='False'       Run Keyword         Fail
    KW: Verify icon the event logo in the reception page.
    Set Config    Retina Display       False

KW: Verify icon the event banner in the reception page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Icon         ${branding_uploaded_folder_path}event_banner_reception_page.png      #template_res_w=2394     browser_res_w=1680         #1680 #3360

KW: Verify the event banner is icon logo in the reception page.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    # ${Check webcommunity event banner in the reception area}        Is Icon     ${branding_uploaded_folder_path}event_banner_reception_page.png      #template_res_w=2394     browser_res_w=1680         #1680 #3360
    # Run Keyword If      '${Check webcommunity event banner in the reception area}'=='True'       Run Keyword         KW: Verify icon the event banner in the reception page.
    # Run Keyword If      '${Check webcommunity event banner in the reception area}'=='False'       Run Keyword         Fail  
    KW: Verify icon the event banner in the reception page.
    Set Config    Retina Display       False

KW: Verify icon the event youtube video frame in the reception page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Icon         ${branding_uploaded_folder_path}youtube_on_reception_page.png      #template_res_w=1529     browser_res_w=1680         #1680 #3360

KW: Verify the event youtube image is in the reception page.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    ${Check webcommunity event youtube image in the reception area}        Is Icon     ${branding_uploaded_folder_path}youtube_on_reception_page.png      #template_res_w=1529     browser_res_w=1680         #1680 #3360
    Run Keyword If      '${Check webcommunity event youtube image in the reception area}'=='True'       Run Keyword         KW: Verify icon the event youtube video frame in the reception page.
    Run Keyword If      '${Check webcommunity event youtube image in the reception area}'=='False'       Run Keyword         Fail
    Set Config    Retina Display       False

KW: Verify the welcome video absence on webcommunity reception page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify No Element       ${event video title reception webcommunity xpath}

KW: Verify the webcommunity Banners absence on webcommunity reception page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify No Element       ${webcommunity banner on the webcommunity reception page xpath}

KW: Verify the favicon on the webcommunity.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Icon         ${branding_uploaded_folder_path}diplaying_favicon.png      #template_res_w=2394     browser_res_w=1680         #1680 #3360

KW: Condition to Verify the favicon on the webcommunity.
    Set Config    Retina Display       True
    Set Config    OSScreenshots        True
    Set Config    Log Matched Icons       True
    # ${Check webcommunity event youtube image in the reception area}        Is Icon     ${branding_uploaded_folder_path}diplaying_favicon.png      #template_res_w=1529     browser_res_w=1680         #1680 #3360
    # Run Keyword If      '${Check webcommunity event youtube image in the reception area}'=='True'       Run Keyword         KW: Verify the favicon on the webcommunity.
    # # Run Keyword If      '${Check webcommunity event youtube image in the reception area}'=='False'       Run Keyword         Fail
    # ...     ELSE        Fail
    KW: Verify the favicon on the webcommunity.
    Set Config    OSScreenshots        False
    Set Config    Retina Display       False

KW: Verify the Event Logo image absence on webcommunity reception page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify No Element       ${webcommunity event logo reception page no element xpath}

KW: Verify the favicon default logo on the webcommunity.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Icon         ${branding_uploaded_folder_path}favicon_default_icon.png      #template_res_w=2394     browser_res_w=1680         #1680 #3360

KW: Condition to Verify the favicon default logo on the webcommunity.
    Set Config    Retina Display       True
    Set Config    OSScreenshots        True
    Set Config    Log Matched Icons       True
    # ${Check webcommunity event favicon default logo}        Is Icon     ${branding_uploaded_folder_path}favicon_default_icon.png      #template_res_w=1529     browser_res_w=1680         #1680 #3360
    # Run Keyword If      '${Check webcommunity event favicon default logo}'=='True'       Run Keyword         KW: Verify the favicon default logo on the webcommunity.
    # Run Keyword If      '${Check webcommunity event favicon default logo}'=='False'       Run Keyword         Fail
    KW: Verify the favicon default logo on the webcommunity.
    Set Config    OSScreenshots        False
    Set Config    Retina Display       False

KW: Verify and check on the webcommunity after deleting the webcommunity login banner 1 image on the cms.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    KW: Wait and verify the login banner 2nd image element.
    ${Check webcommunity login banner 2 on the webcommunity}        Is Icon     ${branding_uploaded_folder_path}webcommunity_side_login_banner2.png      #template_res_w=817     browser_res_w=1680         #1680 #3360
    KW: Wait and verify the login banner 1st image element.
    ${Check webcommunity login banner 1 on the webcommunity}        Is Icon     ${branding_uploaded_folder_path}webcommunity_side_login_banner1.png      #template_res_w=712     browser_res_w=1680         #1680 #3360
    Run Keyword If      '${Check webcommunity login banner 2 on the webcommunity}'=='True'       Run Keyword         KW: Verify and compare the uploaded event webcommunity login banner 2 image on the webcommunity login page.
    Run Keyword If      '${Check webcommunity login banner 1 on the webcommunity}'=='True'       Run Keyword         Fail
    Set Config    Retina Display       False
    # Run Keyword If      '${Check webcommunity login banner 2 on the webcommunity}'=='False'       Run Keyword         Fail        Failing as there is no login banner.
    # Run Keyword If      '${Check webcommunity login banner 1 on the webcommunity}'=='False'       Run Keyword         Pass Execution      Passing as there is no login banner.

KW: Verify no event logo element is present on the login page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify No Element       ${webcommunity event logo no elements on the login page xpath}

KW: Verify event logo element is present on the login page.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element       ${webcommunity event logo no elements on the login page xpath}