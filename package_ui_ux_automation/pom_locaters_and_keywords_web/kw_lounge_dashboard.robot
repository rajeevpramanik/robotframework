*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${cms event lounge xpath}                         xpath\=//span[normalize-space()\='LOUNGE']
${add lounge table button center xpath}                 xpath\=//span[normalize-space()\='Add Lounge Tables']
${add lounge table button top right xpath}              xpath\=//span[normalize-space()\='Add LOUNGE TABLES']
${manage slots button xpath}                            xpath\=//span[normalize-space()\='MANAGE Slots']
${add lounge table name xpath}                          xpath\=//input[@placeholder\='Enter Table Name']
${add lounge topic name xpath}                          xpath\=//input[@placeholder\='Enter Topic']
${add lounge priority xpath}                            xpath\=//input[@placeholder\='Enter Priority']
${choose lounge capacity xpath}                         xpath\=//span[normalize-space()\='2']//input[@type\='radio']
${choose lounge image xpath}                            xpath\=//input[@name\='logoImg']
${add button side panel xpath}                          xpath\=//span[contains(text(),'ADD')]
${cancel button side panel xpath}                       xpath\=//span[normalize-space()\='Cancel']
${image upload alert or crop alert xpath}               xpath\=//span[contains(text(),'CROP & SAVE')]
${image upload alert or cancel alert xpath}             xpath\=//span[normalize-space()\='CANCEL']
${uploaded images displaying area xpath}                xpath\=//div[@role\='presentation']//div[2]//div[2]//div[1]
${created lounge on the listing page xpath}             xpath\=//body/main[@id\='root']/div/section/section/div/div/div/div/div/div/div[2]
${edit lounge xpath}                                    xpath\=//body//main[@id\='root']//section//section//div//div//div//div//div//div//button[1]//span[1]//*[name()\='svg']
${crop and save button xpath}                           xpath\=//body/div[@role\='presentation']/div/div/div/div/div/button[1]

${lounge images upload path}                            /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/uploading_images/lounge/
${panda image}                                          ${lounge images upload path}Lounge_panda_256_256.png
${edit_image}                                           ${lounge_images}edit_icon.png
${delete_image}                                         ${lounge_images}delete_icon.png


***Keywords***
KW: Check lounge side module is present or not.
    Wait Until Keyword Succeeds         30sec       10sec        Is Element      ${cms event lounge xpath}

KW: Click on the lounge module side panel.
    QWeb.Click Text      LOUNGE      anchor=MEETINGS

KW: Lounge text and discription is displayed.
    Verify All      Lounge, You can create a networking lounge for all the attendees by adding lounge tables and making in-person event, experience more interactive. Set the slot duration for the meetings and specify lounge timings to make lounge, available in the time range.

KW: Verify manage slots elemets is present.
    Verify Element      ${manage slots button xpath}

KW: Click on manage slots elemets.
    QWeb.Click Text      MANAGE Slots       anchor=Add LOUNGE TABLES

KW: Verify add lounge table button top right is displayed.
    Verify Element      ${add lounge table button top right xpath}

KW: Click on add lounge table button top right elements.
    QWeb.Click Text     Add LOUNGE TABLES       anchor=MANAGE Slots

KW: Verify add lounge table button center is displayed.
    Verify Element      ${add lounge table button center xpath}

KW: Click on add lounge table button on center elements.
    QWeb.Click Text     Add Lounge Tables       anchor=Add tables to your networking lounge so that People can network.

KW: Verify Enter Table Name text field is present.
    Verify Element      ${add lounge table name xpath}

KW: Verify Enter Topic text field is present.
    Verify Element      ${add lounge topic name xpath}

KW: Verify Enter Priority text field is present.
    Verify Element      ${add lounge priority xpath}

KW: Verify the capacity radio buttons are present or not.
    Verify Element      ${choose lounge capacity xpath}

KW: Verify the image upload buttons are present or not.
    Verify Element      ${choose lounge image xpath}

KW: Verify the add buttons are present or not.
    Verify Element      ${add button side panel xpath}

KW: Verify the cancel buttons are present or not.
    Verify Element      ${cancel button side panel xpath}

KW: Verify all the elements.
    KW: Verify Enter Table Name text field is present.
    KW: Verify Enter Topic text field is present.
    KW: Verify Enter Priority text field is present.
    KW: Verify the capacity radio buttons are present or not.
    KW: Verify the image upload buttons are present or not.
    KW: Verify the add buttons are present or not.
    KW: Verify the cancel buttons are present or not.

KW: Enter Table Name text field is present.
    KW: Faker create lounge name.
    Type Text      ${add lounge table name xpath}       ${lounge name}

KW: Enter Table topic text field is present.
    KW: Faker create lounge topic name.
    Type Text      ${add lounge topic name xpath}       ${topic name}

KW: Enter Table priority text field is present.
    KW: Faker create priority number.
    Type Text       ${add lounge priority xpath}        ${priority}

KW: Select the capacity seat.
    QWeb.Click Element      ${choose lounge capacity xpath}

KW: Add the 256 size lounge image.
    KW: Verify the image upload buttons are present or not.
    Upload File         ${choose lounge image xpath}        ${panda image}      anchor=256x256px | 5MB (maximum)

KW: Click on the crop and save button.
    Wait Until Keyword Succeeds         30sec       10sec        Verify Element      ${crop and save button xpath}       10
    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Click Element      ${crop and save button xpath}
    # QWeb.Click Text     CROP & SAVE      anchor=CANCEL

KW: uploaded image success alert.
    Verify Element Text       ${success alert for event creation xpath}         File uploaded successfully
    Verify Element Text       ${success green alert xpath}         Success

KW: Deleting the uploaded image.
    Hover Element       ${uploaded images displaying area xpath}
    QWeb.Click Element      ${uploaded images displaying area xpath}

KW: Verify the delete popup texts.
    Verify All      You are about to delete a Logo., This will delete your Logo from current Lounge Table.

KW: Click on delete button on the popup.
    KW: Verify the delete popup texts.
    QWeb.Click Text     DELETE      anchor=CANCEL

KW: Click on the add button.
    QWeb.Click Element      ${add button side panel xpath}

KW: Table added alert.
    Verify Element Text       ${success alert for event creation xpath}         The table has been created.
    Verify Element Text       ${success green alert xpath}         Success

KW: Verify the lounge name on the listing page.
    Verify Text         ${lounge name}

KW: Mouse hover upon the created lounge.
    Wait Until Keyword Succeeds         30sec       10sec        Hover Element       ${created lounge on the listing page xpath}

KW: Click on the edit element.
    QWeb.Click Element      ${edit lounge xpath}

KW: Select the seat to four.
    QWeb.Click Text     4       anchor=2

KW: Click the save button on the default login code page.
    QWeb.Click Text     SAVE        anchor=CANCEL

KW: green success alert for editing the lounge.
    Verify Element Text       ${success alert for event creation xpath}         The table details have been updated.
    Verify Element Text       ${success green alert xpath}         Success

