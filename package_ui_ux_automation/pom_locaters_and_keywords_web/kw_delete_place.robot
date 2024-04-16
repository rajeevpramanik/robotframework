*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${three dots for delete place image}=              ${place_three_dots_image}delete_place_option.png

${three dots per event xpath}                       xpath\=//body//main[@id\='root']//section//section//section[1]//div[1]//div[1]//div[1]//div[1]//div[1]//div[2]//button[1]
# //body/main[@id\='root']/div[2]/section[1]/section[1]/div[1]/div[1]/div[2]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/button[1]/span[1]

${delete event text field xpath}                    xpath\=//div[@data-size\='medium']//input[@type\='text']
${three dots multispan}                             xpath\=//*[@id\="root"]/div[2]/section/section/div[1]/div/div[2]/section/div/div/div
${Event has been deleted alert xpath}               xpath\=//body/main[@id\='root']/div/div/div/div[@direction='up']/div/div/span[2]
${delete success alert xpath}                       xpath\=//body/main[@id\='root']/div/div/div/div[@direction='up']/div/div/span[1]
${upcoming view all xpath}                          xpath\=//span[normalize-space()\='View All']


***Keywords***
KW: Click on the three dots and delete the event.
    QWeb.Click Element      ${three dots per event xpath}      1
    QWeb.Click Text     Delete Event
    QWeb.Type Text      ${delete event text field xpath}        DELETE
    QWeb.Click Text     DELETE      anchor=CANCEL

KW: Verify the green success alert after deleteing the event.
    Verify Element Text       ${Event has been deleted alert xpath}         Event has been deleted.
    Verify Element Text       ${delete success alert xpath}                 Success

KW: Click on the UPCOMING VIEW ALL element.
    QWeb.Click Element      ${upcoming view all xpath}

KW: Delete all place.
    # KW: Click on the UPCOMING VIEW ALL element.
    ${find the 3 dots image}=       Is Icon     ${three dots for delete place image}
    ${COUNT}    QWeb.Get Element Count       ${three dots multispan}
    FOR     ${index}        IN RANGE        ${COUNT}
        Continue For Loop If        '${find the 3 dots image}'=='True'
        Run Keyword     KW: Click on the three dots and delete the event.
        Run Keyword     KW: Verify the green success alert after deleteing the event.
        Run Keyword     KW: Refresh page.
    END
