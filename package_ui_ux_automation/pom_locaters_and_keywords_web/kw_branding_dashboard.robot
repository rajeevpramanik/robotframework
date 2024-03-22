*** Settings ***
Documentation   This setting is for the branding module image uploading.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${cms event branding xpath}                                   xpath\=//span[normalize-space()\='BRANDING']
${favicon upload xpath}                                             xpath\=//input[@name\='favicon']
${favicon after uploading element xpath}                            xpath\=//body//main[@id\='root']//div//div[2]//div[1]//div[1]//div[1]//img[1]
${event landing page toggle button xpath}                           xpath\=//input[@name\='is_landing_page']
${add banner button xpath}                                          xpath\=//input[@name\='webcommunity_banner']
${event logo button xpath}                                          xpath\=//input[contains(@name,'logo')]
${webcommunity login banner button xpath}                              xpath\=//input[@name\='webcommunity_login_banner']
${add video button xpath}                                           xpath\=//span[normalize-space()\='Add Video']
${color section area xpath}                                         xpath\=//h6[contains(text(),'Colors')]
${attendees cover image add button xpath}                           xpath\=//input[@name\='cover_image']

${attendees 1st cover image xpath}                                  xpath\=(//img[contains(@alt,'cover_image')])[1]
${attendees last position to be dropped xpath}                      xpath\=//body/main[@id\='root']/div[2]/section[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[22]/div[1]/div[6]/div[1]/div[1]/img[1]

${drag the uploaded image xpath}                                    xpath\=(//img[contains(@alt,'cover_image')])[7]
# (//div[starts-with(@class,"smooth-dnd-container horizontal")])[2]//div[7]
${drop it to the 1st position xpath}                                xpath\=(//img[contains(@alt,'cover_image')])[1]
# (//div[starts-with(@class,"smooth-dnd-container horizontal")])[2]//div[5]
${uploaded webcommunity login banner image element xpath}              xpath\=(//img[contains(@alt,'login_banner')])[1]
${uploaded webcommunity login banner image delete element xpath}       xpath\=(//button[@title\='Delete'])[1]
${uploaded webcommunity banner1st image xpath}                         xpath\=//img[@alt\='webcommunity_banner']
${webcommunity banner delete popup xpath}                              xpath\=//body/div[@role\='presentation']/div/div[1]
# (//div[contains(@class,'')]//button[contains(@title,'Delete')])[2]
# //body/div[contains(@role,'presentation')]/div/div[1]
${webcommunity banner delete popup text xpath}                         xpath\=//h3[normalize-space()\='You are about to delete webcommunity banner']
${webcommunity banner delete popup delete button xpath}                xpath\=//div[@role\='presentation']//div[1]//div[1]//div[4]//button[2]
${webcommunity banner delete popup cancel button xpath}                xpath\=//body//div[contains(@role,'presentation')]//div//div//button[1]

${welcome video side panel xpath}                                   xpath\=//body/div[@role\='presentation']/div[3]
${video type dropdown xpath}                                        xpath\=//body/div[@role\='presentation']/div/aside/div/div/div/div/div/div/div/div/div/div[1]
${video link field xpath}                                           xpath\=//input[@placeholder\='https://']
${video title field xpath}                                          xpath\=//input[@placeholder\='Enter video title']
${video description field xpath}                                    xpath\=//textarea[@placeholder\='Enter short video description']
${popup_after_logon_checkbox_xpath}                                 xpath\=//input[@name\='is_show_after_login']
${popup_Show On Reception_checkbox_xpath}                           xpath\=//input[@name\='is_home_screen']
${video youtube tumbnail xpath}                                     xpath\=//img[@alt\='Thumbnail']
${youtube video frame close xpath}                                  xpath\=//div[@role\='presentation']//div//button[@type='button']
${youtube video frame xpath}                                        xpath\=//*[@id\="movie_player"]/div[1]/video

${branding saving green success alert xpath}                        xpath\=//body/main[@id\='root']/div/div/div/div[contains(@direction,'up')]/div[1]

${webcommunity login banner cropping popup xpath}                      xpath\=//div[@role\='presentation']/div[3]/div[2]

${cms welcome video youtube added play button}                xpath\=//button[@title\='Play']//span
# //button[@title\='Play']//span[@class\='MuiButton-label']//*[name()\='svg']
# (//button[contains(@type,'button')])[22]
${cms welcome video youtube added delete button}              xpath\=(//button[@type='button'])[21]
${cms welcome video youtube delete popup iframe xpath}        xpath\=//body/div[contains(@role,'presentation')]/div/div[1]
${cms welcome video youtube delete popup iframe cancel button xpath}      xpath\=//span[contains(text(),'CANCEL')]
${cms welcome video youtube delete popup iframe delete button xpath}      xpath\=//span[contains(text(),'Delete')]
${uploaded webcommunity banner1st image and the delete option xpath}           xpath\=(//div[contains(@class,'')]//button[contains(@title,'Delete')])[2]
${cms event logo uploaded image xpath}                        xpath\=//img[@alt\='Event_logo']
${cms event logo uploaded image delete button xpath}          xpath\=//img[contains(@alt,'Event_logo')]
# //body/main[@id\='root']/div[2]/section[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[12]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/button[2]

${uploaded webcommunity event favicon logo image and the delete option xpath}           xpath\=(//button[contains(@title,'Delete')])[1]
# //body//main[@id\='root']//section//section//div[2]//div[1]//div[1]//div[1]//div[1]//div[1]//button[1]

${last webcommunity login banner image on the cms xpath}         xpath\=//body/main[@id\='root']/div[2]/section[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[13]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/button[1]

${maroon branding color}                        ${branding_folder_path}color_maroon.png
${deep blue branding color}                     ${branding_folder_path}color_deep_blue.png
${light green branding color}                   ${branding_folder_path}color_light_green.png
${orange branding color}                        ${branding_folder_path}color_orange.png
${red branding color}                           ${branding_folder_path}color_red.png
${sky blue branding color}                      ${branding_folder_path}color_sky_blue.png
${login banner image}                           ${branding_folder_path}login_BANNER.png
${favicon image}                                ${branding_folder_path}icon_developer_icon.png
${webcommunity banner 1 image}                     ${branding_folder_path}webcommunity_Banners_Final.jpg

${video title is}      gurupoint Virtual Event Platform
${video description is}        We help event organizers save their time, effort, and resources by enabling them to host global events virtually.

@{colors lists}=        ${maroon branding color}        ${deep blue branding color}         ${light green branding color}       ${orange branding color}        ${red branding color}       ${sky blue branding color}



***Keywords***
KW: Verify the branding side element is present.
    QWeb.Verify Element         ${cms event branding xpath}

KW: Click on the Branding module.
    QWeb.Click Element          ${cms event branding xpath}

KW: Verify the brand your event sub module.
    QWeb.Verify Text        BRAND YOUR EVENT        anchor=SPONSORED ADS

KW: Click on the brand your event sub module.
    QWeb.Click Text         BRAND YOUR EVENT        anchor=SPONSORED ADS

KW: Verify the text are present within the branding module.
    Verify All      Brand Your Event, You are able to configure the domain name, select your colour theme and upload your own webcommunity banners, login banner and event logo, This will help the attendee to connect with your brand and buy into your brand promise, Learn More, Event Domain, Know more in Event Branding

KW: Verify favicon indo are diaplaying.
    Verify All      Favicon 32x32px | 100KB (Maximum)

KW: Verify favicon element is present.
    QWeb.Verify Element         ${favicon upload xpath}

KW: Verify vanity info is present.
    Verify All      Vanity URL, Please make sure that name is unique

KW: Verify Event Landing Page info details.
    Verify All      Event Landing Page, Enabling this option would allow you to see the event landing page

KW: Verify the event landing page toggle button is present.
    QWeb.Verify Element         ${event landing page toggle button xpath}

KW: Toggle off/on and verify wether it is working or not.
    QWeb.Click Element          ${event landing page toggle button xpath}

KW: Verify webcommunity Banners Page info details.
    Verify All      webcommunity Banners, 1200x400px, | 5MB (Maximum), Maximum 50 allowed. Know more in Event Branding

KW: Verify the Add Banner button is present.
    QWeb.Verify Element         ${add banner button xpath}

KW: Verify Event Logo Page info details.
    Verify All      Event Logo, Width or Height has to be at least 300px | 5MB (Maximum), Know more in Event Branding

KW: Verify the Event Logo button is present.
    QWeb.Verify Element         ${event logo button xpath}

KW: Verify Login Banners Page info details.
    Verify All      Login Banners, 1280x1080px, | 5MB (Maximum), Know more in Event Branding

KW: Verify the Login Banners button is present.
    QWeb.Verify Element         ${webcommunity login banner button xpath}

KW: Scroll to element ADD BANNER button.
    Scroll To       Add Banner       anchor=Add Logo

KW: Verify Welcome Video Page info details.
    Verify All      Welcome Video, Greet your attendee with a welcome video, If the youtube video that you provide contains copyrighted material, it might not play

KW: Verify the Welcome Video button is present.
    QWeb.Verify Element         ${add video button xpath}

KW: Verify the Colors section on the Page is displayed.
    ${color present or not}=        Is Element      ${color section area xpath}
    Set Global Variable     ${color present or not}
    
KW: Condition for the color area and verify the texts and color.
    Verify All      Colors, Know more in Event Branding, Learn More

KW: Select any one color from the list.
    ${length of color lists}=    get length      ${colors lists}
    ${random_color_NUMBER}=   evaluate    random.randint(0,${length of color lists}-1)
    ${The final color value from the list is}=    Get From List       ${colors lists}       ${random_color_NUMBER}
    Set Global Variable         ${The final color value from the list is}

KW: Verify all the individual colors are present.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    Is Icon         ${maroon branding color}      #template_res_w=64     browser_res_w=1680         #1680 #3360
    Set Config    Log Matched Icons       True
    Is Icon         ${deep blue branding color}      #template_res_w=66     browser_res_w=1680         #1680 #3360
    Set Config    Log Matched Icons       True
    Is Icon         ${light green branding color}      #template_res_w=67     browser_res_w=1680         #1680 #3360
    Set Config    Log Matched Icons       True
    Is Icon         ${orange branding color}      #template_res_w=66     browser_res_w=1680         #1680 #3360
    Set Config    Log Matched Icons       True
    Is Icon         ${red branding color}      #template_res_w=66     browser_res_w=1680         #1680 #3360
    Set Config    Log Matched Icons       True
    Is Icon         ${sky blue branding color}      #template_res_w=66     browser_res_w=1680         #1680 #3360
    Set Config    Retina Display       False

KW: Verify the section is present or not, then Click on any of the color from the list.
    KW: Verify the Colors section on the Page is displayed.
    Run Keyword If      '${color present or not}'=='True'       KW: Condition for the color area and verify the texts and color.

    KW: Verify all the individual colors are present.
    KW: Select any one color from the list.

KW: Scroll to bottom of the branding page.
    Scroll To       SAVE       anchor=Cancel

KW: Verify Cover Images for Attendees info details.
    Verify All      Cover Images for Attendees, 1200x400px | 5MB (Maximum), Maximum 10 upload allowed, Add cover images for attendees to select for their event

KW: Verify the Cover Images for Attendees button is present.
    QWeb.Verify Element         ${attendees cover image add button xpath}

KW: Hover upon the 1st image that will be dragged to the destination place.
    Hover Element       ${attendees 1st cover image xpath}      index=2     partial_match=False

KW: Drag the 1st image to the other position.
    QWeb.Drag Drop      ${attendees 1st cover image xpath}      ${attendees last position to be dropped xpath}      index=2     anchor=Maximum 10 upload allowed. Add cover images for attendees to select for their event.     target_anchor=SAVE      #partial_match=False         #right=3

KW: Drag the 1st image to the extrem last position.
    QWeb.Drag Drop      ${drag the uploaded image xpath}      ${drop it to the 1st position xpath}      anchor=Maximum 10 upload allowed. Add cover images for attendees to select for their event.     target_anchor=SAVE      #partial_match=False         #right=3

KW: Verify the invaid image upload alert.
    Verify Element Text       ${success green alert xpath}                      Error
    Verify Element Text       ${success alert for event creation xpath}         The file size is too high. Kindly upload Image lesser than 100KB

KW: Verify the green alert for Brand your event's settings have been updated.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text       ${branding saving green success alert xpath}      Success
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text       ${branding saving green success alert xpath}      Brand your event's settings have been updated.

KW: Upload invalid image for the favicon.
    Upload File     ${favicon upload xpath}     ${login banner image}       anchor=Favicon

KW: Upload valid image for the favicon.
    Upload File     ${favicon upload xpath}     ${favicon image}       anchor=Favicon

KW: Verify the uploaded favicon image on the cms.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        Verify Icon         ${branding_uploaded_folder_path}uploaded_favicon.png      #template_res_w=100     browser_res_w=1680         #1680 #3360
    Set Config    Retina Display       False

KW: Upload invalid image for the webcommunity banner.
    Wait Until Keyword Succeeds         10sec       1sec        Upload File     ${add banner button xpath}     ${maroon branding color}       anchor=webcommunity Banners

KW: Verify the invaid image upload webcommunity banner alert.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text       ${branding saving green success alert xpath}      Error
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text       ${branding saving green success alert xpath}      Minimum required Image size is 1200 PX x 400 PX. Your image size is 64 PX x 64 PX. Please upload a different image

KW: Upload valid image for the webcommunity banner but will remove it to check the delete is working or not.
    Wait Until Keyword Succeeds         10sec       1sec        Upload File     ${add banner button xpath}     ${webcommunity banner 1 image}       anchor=webcommunity Banners

KW: Hover upon the uploaded webcommunity banner image.
    Wait Until Keyword Succeeds         10sec       1sec        Hover Element       ${uploaded webcommunity banner1st image xpath}
    # QWeb.Click Element      ${uploaded webcommunity banner1st image xpath}

KW: check wethere the delete icon is present.
    # Set Config    Retina Display       True
    # Set Config    Log Matched Icons       True
    ${true_or_false_delete_icon}=        Is Icon         ${branding_folder_path}delete_icon.png      #template_res_w=43     browser_res_w=1680         #1680 #3360
    Set Global Variable     ${true_or_false_delete_icon}
    # Set Config    Retina Display       False

KW: Hover upon the delete option, which is a added webcommunity banner once hovered.
    Wait Until Keyword Succeeds         10sec       1sec        Hover Element       ${uploaded webcommunity banner1st image and the delete option xpath}

KW: Click the delete icon over the webcommunity banner.
    # Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    # Hover Element       xpath\=(//div[contains(@class,'')]//button[contains(@title,'Delete')])[2]
    KW: Hover upon the delete option, which is a added webcommunity banner once hovered.
    Wait Until Keyword Succeeds         10sec       1sec        Click Element       xpath\=//*[@id\="root"]/div[2]/section/section/div[1]/div/div/div/div[9]/div/div/div/div/div/div/button[2]       js=true
    # Click Icon      ${branding_folder_path}delete_icon.png       #template_res_w=43     browser_res_w=1680         #1680 #3360
    # KW: check wethere the delete icon is present.
    # Set Config    Retina Display       False

# KW: Click the delete icon over the webcommunity banner.
#     Set Config    Retina Display       True
#     Set Config    Log Matched Icons       True
#     Click Icon      ${branding_folder_path}delete_icon.png       #template_res_w=43     browser_res_w=1680         #1680 #3360
#     KW: check wethere the delete icon is present.
#     Set Config    Retina Display       False

KW: Wait for the delete webcommunity popup alert.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${webcommunity banner delete popup xpath}

KW: Wait for the webcommunity banner delete permission popup text.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text     ${webcommunity banner delete popup text xpath}     You are about to delete webcommunity banner

KW: Verify the delete and cancel element is present on the webcommunity banner popup.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${webcommunity banner delete popup delete button xpath}
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${webcommunity banner delete popup cancel button xpath}

KW: Click the delete button from the popup.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element       ${webcommunity banner delete popup delete button xpath}

KW: Reupload valid webcommunity banner again.
    Wait Until Keyword Succeeds         10sec       1sec        Upload File     ${add banner button xpath}     ${branding_folder_path}webcommunity_banner2.png       anchor=webcommunity Banners

KW: Upload valid webcommunity banner to show the cropping popup appears or not.
    Wait Until Keyword Succeeds         30sec       10sec        Upload File     ${add banner button xpath}     ${branding_folder_path}login_BANNER.png       anchor=webcommunity Banners

KW: Verify the uploaded webcommunity banner image on the cms.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        Verify Icon         ${branding_uploaded_folder_path}uploaded_webcommunity_banner.png      #template_res_w=643     browser_res_w=1680         #1680 #3360
    Set Config    Retina Display       False

KW: Wait for the webcommunity login banner crop popup.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Element      ${webcommunity login banner cropping popup xpath}

KW: Sroll the page to the event landing page toggle button.
    Wait Until Keyword Succeeds         10sec       1sec        Scroll Text     webcommunity Banners       anchor=Maximum 30 allowed. Know more in Event Branding

KW: Upload invalid image for the Event Logo.
    Wait Until Keyword Succeeds         10sec       1sec        Upload File     ${event logo button xpath}     ${maroon branding color}       anchor=Event Logo

KW: Verify the invaid image upload Event Logo alert.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text       ${branding saving green success alert xpath}      Error
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text       ${branding saving green success alert xpath}      Either image width or height has to be at least 300 PX. Your image size is 64 PX x 64 PX. Please upload a different image

KW: Upload valid image for the Event Logo, but file size is larger.
    Wait Until Keyword Succeeds         10sec       1sec        Upload File     ${event logo button xpath}     ${branding_folder_path}BigFileImage.jpg       anchor=Event Logo

KW: Verify the vaid image, but large size upload Event Logo alert.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text       ${branding saving green success alert xpath}         Error
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text       ${branding saving green success alert xpath}         The file size is too high. Kindly upload Image lesser than 5MB

KW: Upload valid image for the Event Logo.
    Wait Until Keyword Succeeds         10sec       1sec        Upload File     ${event logo button xpath}     ${branding_folder_path}event_logo_final.png       anchor=Event Logo

KW: Sroll the page to the event logo text area.
    Wait Until Keyword Succeeds         10sec       1sec        Scroll Text     Event Logo       anchor=Width or Height has to be at least 300px | 5MB (Maximum)

KW: Verify the uploaded event logo image on the cms.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        Verify Icon         ${branding_uploaded_folder_path}uploaded_event_logo.png      #template_res_w=305     browser_res_w=1680         #1680 #3360
    Set Config    Retina Display       False

KW: Upload invalid image for the webcommunity login banner.
    Wait Until Keyword Succeeds         10sec       1sec        Upload File     ${webcommunity login banner button xpath}     ${maroon branding color}       anchor=Event Logo

KW: Verify the invaid image upload webcommunity login banner alert.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text       ${branding saving green success alert xpath}         Error
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element Text       ${branding saving green success alert xpath}         Minimum required Image size is 1280 PX x 1080 PX. Your image size is 64 PX x 64 PX. Please upload a different image

KW: Upload valid image for the webcommunity login banner 1.
    Wait Until Keyword Succeeds         30sec       10sec        Upload File     ${webcommunity login banner button xpath}     ${branding_folder_path}login_BANNER.png       anchor=Login Banners

KW: Upload valid image for the webcommunity login banner 2.
    Wait Until Keyword Succeeds         30sec       10sec        Upload File     ${webcommunity login banner button xpath}     ${branding_folder_path}webcommunity_login_banner2.png       anchor=Login Banners

KW: Sroll the page to the webcommunity login banner text area.
    Wait Until Keyword Succeeds         30sec       10sec        Scroll Text     Login Banners       anchor=1280x1080px | 5MB (Maximum)

KW: Verify the icon uploaded_webcommunity_login_banner1 on the cms.
    Wait Until Keyword Succeeds         20sec       5sec        Verify Icon         ${branding_uploaded_folder_path}uploaded_webcommunity_login_banner1.png      #template_res_w=630     browser_res_w=1680         #1680 #3360

KW: Verify the icon uploaded_webcommunity_login_banner2 on the cms.
    Wait Until Keyword Succeeds         20sec       5sec        Verify Icon         ${branding_uploaded_folder_path}uploaded_webcommunity_login_banner2.png      #template_res_w=643     browser_res_w=1680         #1680 #3360

KW: Verify the uploaded 2 webcommunity login banner image on the cms.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    # ${Check webcommunity login banner 1 on the cms}        Is Icon     ${branding_uploaded_folder_path}uploaded_webcommunity_login_banner1.png      #template_res_w=630     browser_res_w=1680         #1680 #3360
    # ${Check webcommunity login banner 2 on the cms}        Is Icon     ${branding_uploaded_folder_path}uploaded_webcommunity_login_banner2.png      #template_res_w=643     browser_res_w=1680         #1680 #3360
    # Run Keyword If      '${Check webcommunity login banner 1 on the cms}'=='True'       Run Keyword         KW: Verify the icon uploaded_webcommunity_login_banner1 on the cms.
    # Run Keyword If      '${Check webcommunity login banner 2 on the cms}'=='True'       Run Keyword         KW: Verify the icon uploaded_webcommunity_login_banner2 on the cms.
    KW: Verify the icon uploaded_webcommunity_login_banner1 on the cms.
    KW: Verify the icon uploaded_webcommunity_login_banner2 on the cms.
    Set Config    Retina Display       False
    # Run Keyword If      '${Check webcommunity login banner 1 on the cms}'=='False'       Run Keyword         Fail
    # Run Keyword If      '${Check webcommunity login banner 2 on the cms}'=='False'       Run Keyword         Fail

KW: Sroll the page to the Welcome Video text area.
    Wait Until Keyword Succeeds         10sec       1sec        Scroll Text     Welcome Video       anchor=Greet your attendee with a welcome video.

KW: Click on the add video button.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element       ${add video button xpath}

KW: Verify the add video right side panel exist or not.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${welcome video side panel xpath}

KW: Verify the video type drop down element is present or not.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${video type dropdown xpath}

KW: Click the video type drop down to select the youtube or vimio.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${video type dropdown xpath}

KW: Select youtube from the video type dropdown.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Text      YouTube         anchor=Vimeo

KW: Verify the video link field element is present or not.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${video link field xpath}

KW: Click the video link field to type
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${video link field xpath}

KW: Type video link on the video link field.
    ${gurupoint youtube link}=     Convert To String       https://www.youtube.com/watch?v=bvLxuw7_4QQ
    Set Global Variable     ${gurupoint youtube link}
    Wait Until Keyword Succeeds         10sec       1sec        Type Text       ${video link field xpath}       ${gurupoint youtube link}         anchor=Video Link

KW: Verify the video title field element is present or not.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${video title field xpath}

KW: Click the video title field to type.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${video title field xpath}

KW: Type video title on the video title field.
    Set Global Variable     ${video title is}
    Wait Until Keyword Succeeds         10sec       1sec        Type Text       ${video title field xpath}       ${video title is}         anchor=Video Title

KW: Verify the Video Description field element is present or not.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${video description field xpath}

KW: Click the Video Description field to type.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${video description field xpath}

KW: Type Video Description on the video title field.
    Set Global Variable     ${video description is}
    Wait Until Keyword Succeeds         10sec       1sec        Type Text       ${video description field xpath}       ${video description is}        anchor=Video Description

KW: Verify the PopUp After First Login checkbox is present or not.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${popup_after_logon_checkbox_xpath}

KW: Click the Popup after first login checkbox.
    Wait Until Keyword Succeeds         10sec       1sec        Click Checkbox      ${popup_after_logon_checkbox_xpath}     on

KW: Verify the Show On Reception checkbox is present or not.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${popup_Show On Reception_checkbox_xpath}

KW: Click the Show On Reception checkbox.
    Wait Until Keyword Succeeds         10sec       1sec        Click Checkbox      ${popup_Show On Reception_checkbox_xpath}     on

KW: Verify the title, description, url is displaying.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Text     ${video title is}       anchor=Video:
    Wait Until Keyword Succeeds         10sec       1sec        Verify Text     ${video description is}     anchor=Description:
    Wait Until Keyword Succeeds         10sec       1sec        Verify Text     ${gurupoint youtube link}      anchor=Description:

KW: Verify the uploaded youtube video image on the cms.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        Verify Icon         ${branding_uploaded_folder_path}uploaded_youtube_video_screen.png      #template_res_w=666     browser_res_w=1680         #1680 #3360
    Set Config    Retina Display       False

KW: Hover upon the uploaded youtube video thumbnail.
    Wait Until Keyword Succeeds         10sec       1sec        Hover Element       ${video youtube tumbnail xpath}         index=1

KW: Check wethere the youtube play icon is present.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    ${true_or_false_play_icon}=        Is Icon         ${branding_folder_path}youtube_video_play_button.png      #template_res_w=52     browser_res_w=1680         #1680 #3360
    Set Global Variable     ${true_or_false_play_icon}
    Set Config    Retina Display       False

KW: To click the play icon the youtube frmae if the condition is true.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      Play        tag=button      index=1      js=true        timeout=10s

KW: Click image upon the uploaded youtube play to watch the video.
    # Set Config    Retina Display       True
    # Set Config    Log Matched Icons       True
    # Wait Until Keyword Succeeds         30sec       10sec        Click Icon         ${branding_folder_path}youtube_video_play_button.png      #template_res_w=52     browser_res_w=1680         #1680 #3360
    # Set Config    Retina Display       False
    # QWeb.Click Element      ${cms welcome video youtube added play button}     js=true
    # Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${cms welcome video youtube added play button}     js=true
    # KW: Hover upon the uploaded youtube video thumbnail.
    # Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      Play        tag=button      index=1      js=true        timeout=10s
    KW: Check wethere the youtube play icon is present.
    Run Keyword If      '${true_or_false_play_icon}'=='True'       Run Keyword         KW: To click the play icon the youtube frmae if the condition is true.

KW: Verify the youtube video iframe is displayed.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${youtube video frame xpath}

KW: Sleep for 10 sec to play the video.
    BuiltIn.Sleep   10 seconds

KW: Verify the close item is present in the youtube iframe.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element          ${youtube video frame close xpath}

KW: Click the cross icon to close the youtube iframe.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${youtube video frame close xpath}

KW: Upload valid image for the Cover Images for Attendees.
    Wait Until Keyword Succeeds         30sec       10sec        Upload File     ${attendees cover image add button xpath}     ${branding_folder_path}Cover_Images_for_Attendees.png       anchor=Cover Images for Attendees

KW: Verify the uploaded Cover Images for Attendees on the cms.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    Wait Until Keyword Succeeds         30sec       10sec        Verify Icon         ${branding_uploaded_folder_path}uploaded_attendees_cover_image.png      #template_res_w=641     browser_res_w=1680         #1680 #3360
    Set Config    Retina Display       False

KW: Verify the delete option is present in the welcome video from cms.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${cms welcome video youtube added delete button}      js=true

KW: Delete welcome video from cms.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${cms welcome video youtube added delete button}     js=true
    # Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      Delete      tag=button     js=true

KW: Verify the welcome video delete popup iframe appears.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${cms welcome video youtube delete popup iframe xpath}        js=true

KW: Verify the welcome video delete popup iframe texts appearence.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Text     Are you sure you want to continue?      anchor=CANCEL

KW: Verify the welcome video delete popup iframe Cancel button appearence.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${cms welcome video youtube delete popup iframe cancel button xpath}      js=true

KW: Verify the welcome video delete popup iframe Delete button appearence.
    Wait Until Keyword Succeeds         10sec       1sec        Verify Element      ${cms welcome video youtube delete popup iframe delete button xpath}      js=true

KW: Click on the welcome video delete popup iframe Delete button appearence.
    # Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${cms welcome video youtube delete popup iframe delete button xpath}     js=true
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Text     Delete      anchor=CANCEL    

KW: Verify the welcome video youtube video frame is deleted from the cms.
    Wait Until Keyword Succeeds         10sec       1sec        Verify No Element       ${video youtube tumbnail xpath}         timeout=5s

KW: Click on the welcome video youtube video frmae on the cms.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element       ${video youtube tumbnail xpath}         timeout=5s

KW: Scroll to webcommunity Banners section.
    Wait Until Keyword Succeeds         10sec       1sec        Scroll Text     webcommunity Banners       anchor=Maximum 50 allowed

KW: Scroll to webcommunity Event Logo section.
    Wait Until Keyword Succeeds         10sec       1sec        Scroll Text     Event Logo       anchor=Width or Height has to be at least

KW: Hover upon the uploaded webcommunity Event Logo image.
    Wait Until Keyword Succeeds         10sec       1sec        Hover Element       ${cms event logo uploaded image xpath}        index=1

KW: Hover upon the delete option, which is a added webcommunity Event Logo image once hovered.
    Wait Until Keyword Succeeds         10sec       1sec        Hover Element       ${cms event logo uploaded image delete button xpath}      index=1

KW: Click the delete icon over the event logo image.
    # KW: Hover upon the delete option, which is a added webcommunity Event Logo image once hovered.
    # Wait Until Keyword Succeeds         10sec       1sec        Click Icon      ${branding_folder_path}delete_icon.png       #template_res_w=43     browser_res_w=1680         #1680 #3360
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      Delete        tag=button        index=2      js=true

KW: Click the delete icon over the webcommunity Event Logo image.
    Set Config    Retina Display       True
    Set Config    Log Matched Icons       True
    # KW: check wethere the delete icon is present.
    # Run Keyword If      '${true_or_false_delete_icon}'=='True'       Run Keyword         KW: Click the delete icon over the event logo image.
    # Run Keyword If      '${true_or_false_delete_icon}'=='False'       Run Keyword         KW: check wethere the delete icon is present.
    # Run Keyword If      '${true_or_false_delete_icon}'=='True'       Run Keyword         KW: Click the delete icon over the event logo image.
    # Run Keyword If      '${true_or_false_delete_icon}'=='True'       Run Keyword         KW: Click the delete icon over the event logo image.
    # Run Keyword If      '${true_or_false_delete_icon}'=='False'       Run Keyword         Fail
    # KW: Hover upon the uploaded webcommunity Event Logo image.
    KW: Click the delete icon over the event logo image.
    Set Config    Retina Display       False

KW: Verify the Event Logo image frame is deleted from the cms.
    Wait Until Keyword Succeeds         10sec       1sec        Verify No Element       ${cms event logo uploaded image xpath}        timeout=5s

KW: Hover upon the uploaded webcommunity favicon Logo image.
    Wait Until Keyword Succeeds         10sec       1sec        Hover Element       ${favicon after uploading element xpath}

KW: Click upon the uploaded webcommunity favicon Logo image.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element       ${favicon after uploading element xpath}       js=true

KW: Click on the Delete option of favicon log image from cms.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${uploaded webcommunity event favicon logo image and the delete option xpath}     js=true
    # Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      Delete        tag=button        js=true

KW: Verify the favicon log image is deleted from the cms.
    Wait Until Keyword Succeeds         10sec       1sec        Verify No Element       ${favicon after uploading element xpath}

KW: Hover upon the uploaded webcommunity uploaded login banner image.
    Wait Until Keyword Succeeds         10sec       1sec        Hover Element       ${uploaded webcommunity login banner image element xpath}      timeout=10s

KW: Click on the Delete option of webcommunity uploaded login banner image from cms.
    KW: Hover upon the uploaded webcommunity uploaded login banner image.
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${uploaded webcommunity event favicon logo image and the delete option xpath}     js=true

KW: Verify the info present on the favicon popup for deleteing.
    Verify All      You are about to delete favicon, Are you sure you want to continue, CANCEL, Delete

KW: Click the delete button on the last webcommunity login banner on the cms.
    KW: Hover upon the uploaded webcommunity uploaded login banner image.
    # Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      Delete        tag=button        index=0      js=true
    Wait Until Keyword Succeeds         10sec       1sec        QWeb.Click Element      ${last webcommunity login banner image on the cms xpath}      js=true

KW: Verify the last webcommunity login banner is not present after deleting from the cms.
    Wait Until Keyword Succeeds         10sec       1sec        Verify No Element       ${uploaded webcommunity login banner image element xpath}
