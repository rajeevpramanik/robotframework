*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

*** Variables ***
${room module on the side panel xpath}                                  xpath\=//span[normalize-space()\='ROOMS']
${add room button in the center is present xpath}                       xpath\=//span[normalize-space()\='Add Rooms']
${add single room options xpath}                                        xpath\=//span[normalize-space()\='Single Add']
${add rooms via bulk options xpath}                                     xpath\=//span[normalize-space()\='Bulk Upload']

${single enter room name field xpath}                                   xpath\=//input[@placeholder\='Enter Room Name']
${single enter room description field xpath}                            xpath\=//textarea[@placeholder\='Enter Room Description']
${single session room purpose radio xpath}                              xpath\=//span[normalize-space()\='Single Session']//input[@type\='radio']
${multi session room purpose radio xpath}                               xpath\=//span[normalize-space()\='Multiple Sessions']//input[@type\='radio']

${add rooms via bulk upload download button side panel xpath}           xpath\=//span[contains(text(),'Download')]


*** Keywords ***
KW: Verify the room module is present on the left hamburger.
    QWeb.Verify Element         ${room module on the side panel xpath}      partial_match=False

KW: Hover upon the room module on the left hamburger.
    Hover Element           ${room module on the side panel xpath}      partial_match=False

KW: Click on the room module on the left hamburger.
    QWeb.Click Element          ${room module on the side panel xpath}      partial_match=False

KW: Verify the room info are displaying.
    Verify All      Create rooms to host single or multiple sessions for conducting demos, product presentations, breakout sessions etc, choose moderators from the people and allow who can join the room, Create Rooms to hold breakout sessions, demo rooms for virtual booths, fireside chats and panel discussions

KW: Hover upon the add rooms button on the center of the screen.
    Hover Element           ${add room button in the center is present xpath}       partial_match=False

KW: Click on the add rooms button on the center of the screen.
    QWeb.Click Element          ${add room button in the center is present xpath}      partial_match=False

KW: Verify single add options displaying when clicked the add rooms button or dropdown.
    QWeb.Verify Element         ${add single room options xpath}      partial_match=False

KW: Verify bulk upload options displaying when clicked the add rooms button or dropdown.
    QWeb.Verify Element         ${add rooms via bulk options xpath}      partial_match=False

KW: Hover upon the single add option on the rooms page.
    Hover Element           ${add single room options xpath}      partial_match=False

KW: Hover upon the bulk upload option on the rooms page.
    Hover Element           ${add rooms via bulk options xpath}      partial_match=False

KW: Click on the single add button for rooms.
    QWeb.Click Element          ${add single room options xpath}

KW: Click on the bulk upload add button for rooms.
    QWeb.Click Element          ${add rooms via bulk options xpath}

KW: Room bulk upload side panel texts displaying.
    Verify All          Step 1: Download your pre-formatted event data, Step 2: Upload the file with changes, Download, Drag & drop the file here or select file, Supported Formats:, UPLOAD, Cancel

KW: Verify the room download button for bulk upload is present.
    QWeb.Verify Element         ${add rooms via bulk upload download button side panel xpath}

KW: Click on the download button to export room template.
    QWeb.Click Element          ${add rooms via bulk upload download button side panel xpath}       js=True
