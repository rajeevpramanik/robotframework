*** Settings ***
Documentation   This setting is for the reading and writing the data to the excel sheet for reference.

Library         BuiltIn
Library         Collections
Library         FakerLibrary        locale=en_US
Library         ExcellentLibrary
Library         JSONLibrary
Library         DateTime

Variables       ../test_data/td_page_messages.py
Resource        ../setup_teardown/setup_teardown_func.robot


*** Variables ***
${The work book}        ../package_cms_webcommunity/test_excel_ddt/testfile.xlsx
${download_folder}      /Users/rajeev/Downloads/
${destination_folder}   ../package_cms_webcommunity/test_excel_ddt/people
${people_folder}        ../package_cms_webcommunity/test_excel_ddt/people/
${rooms destination_folder}     ../package_cms_webcommunity/test_excel_ddt/rooms
${rooms_folder}     ../package_cms_webcommunity/test_excel_ddt/rooms/


*** Keywords ***
KW: To open the workbook to the specified path.
    Open Workbook       ${The work book}        alias=org_details_excel

KW: To save & close the workbook to the specified path.
    Save
    Close Workbook

KW: Get the Column Count.
    ${The all column count is}=      Get Column Count
    SET GLOBAL VARIABLE     ${The all column count is}

KW: Get the Row Count.
    ${The all row count is}=      Get Row Count
    SET GLOBAL VARIABLE     ${The all row count is}

KW: Globally evalutaing to the excel sheet.
    ${Next_Row_Evalute}=       evaluate     ${The all row count is}+1
    set global variable     ${Next_Row_Evalute}

KW: Switch sheets 1.
    Switch Sheet        Registered_Email

KW: Interacting with the Excel sheet1.
    KW: Switch sheets 1.
    KW: Get the Column Count.
    KW: Get the Row Count.
    KW: Globally evalutaing to the excel sheet.

KW: Switch sheets 2.
    Switch Sheet        UserName_Password

KW: Interacting with the Excel sheet2.
    KW: Switch sheets 2.
    KW: Get the Column Count.
    KW: Get the Row Count.
    KW: Globally evalutaing to the excel sheet.

KW: List for Random True & False.
    @{List for True or False}=  create list     true    false
    # log     ${List for True or False}
    ${Length_Of_month_Lists_Items}=    get length  ${List for True or False}
    ${random_NUMBER}=   evaluate    random.randint(0,${Length_Of_month_Lists_Items}-1)
    # log     ${random_NUMBER}
    ${The Boolean value is}=    Get From List       ${List for True or False}       ${random_NUMBER}
    set global variable     ${The Boolean value is}

KW: Write email to the excel.
    Write To Cell       A${Next_Row_Evalute}        ${generated email}

KW: Write fname to the excel.
    Write To Cell       B${Next_Row_Evalute}        ${fname}

KW: Write lname to the excel.
    Write To Cell       C${Next_Row_Evalute}        ${lname}

KW: Write password to the excel.
    Write To Cell       D${Next_Row_Evalute}        ${password10}

KW: Write organization to the excel.
    Write To Cell       E${Next_Row_Evalute}        ${organization}

KW: Write current date to the excel.
    Write To Cell       G${Next_Row_Evalute}        ${CurrentDate}

KW: Read excel for email address.
    ${read_email}=      Read From Cell      A${The all row count is}
    set global variable         ${read_email}

KW: Read excel for password.
    ${read_pwd}=      Read From Cell      D${The all row count is}
    set global variable         ${read_pwd}

KW: Read excel for organizer name.
    ${read_org}=        Read From Cell      E${The all row count is}
    set global variable         ${read_org}

KW: Write excel for organizer domain name.
    Write To Cell       F${The all row count is}        ${domain_name}

KW: Read excel for organizer domain name.
    ${read_domain}=     Read From Cell       F${The all row count is}
    set global variable     ${read_domain}

KW: Read excel for fname.
    ${read_fname}=      Read From Cell      B${The all row count is}
    set global variable     ${read_fname}

KW: Read excel for lname.
    ${read_lname}=      Read From Cell      C${The all row count is}
    set global variable     ${read_lname}

KW: List the download Directories In Directory
    ${people_attendees_excel_sheet}=        List Files In Directory       ${download_folder}      *.xlsx        absolute=False
    set global variable     ${people_attendees_excel_sheet}

KW: Move files from download folder into project folder.
    KW: List the download Directories In Directory
    ${length} =     Get Length      ${people_attendees_excel_sheet}
    FOR     ${index}        IN RANGE        ${length}
        QWeb.Move Files     ${people_attendees_excel_sheet}[${index}]     ${destination_folder}
    END

KW: List the people Directories In Directory and select the latest excel.
    ${people_attendees_excel_sheets_list}=        List Files In Directory       ${people_folder}      *.xlsx
    set global variable     ${people_attendees_excel_sheets_list}

KW: Get the length of the people excel lists.
    KW: List the people Directories In Directory and select the latest excel.
    ${length_people_attendees_excel_sheets_list} =     Get Length      ${people_attendees_excel_sheets_list}
    set global variable     ${length_people_attendees_excel_sheets_list}

KW: Fetch only the latest excel sheet download.
    KW: Get the length of the people excel lists.
    ${fetching_latest_people_excel_sheet}=      Get From List       ${people_attendees_excel_sheets_list}       -1
    set global variable     ${fetching_latest_people_excel_sheet}

KW: Delete all the people excel sheets in the people folder.
    KW: Get the length of the people excel lists.
    FOR     ${index}        IN RANGE        ${length_people_attendees_excel_sheets_list}
        Remove Files     ${people_folder}${people_attendees_excel_sheets_list}[${index}]
    END

KW: Open people excel.
    KW: Fetch only the latest excel sheet download.
    Open Workbook       ${people_folder}${fetching_latest_people_excel_sheet}       alias=people excelsheet

KW People excel, switch to sheet Matchmaking Fields (Read Only)
    Switch Sheet        Matchmaking Fields (Read Only)

KW People excel, switch to sheet Attendee Data
    Switch Sheet        Attendee Data

KW: Interacting with the Excel sheet Matchmaking Fields (Read Only).
    run keyword and continue on Failure             KW People excel, switch to sheet Matchmaking Fields (Read Only)
    run keyword and continue on Failure             KW: Get the Column Count.
    run keyword and continue on Failure             KW: Get the Row Count.
    run keyword and continue on Failure             KW: Globally evalutaing to the excel sheet.

KW: Interacting with the Excel sheet Attendee Data.
    run keyword and continue on Failure             KW People excel, switch to sheet Attendee Data
    run keyword and continue on Failure             KW: Get the Column Count.
    run keyword and continue on Failure             KW: Get the Row Count.
    run keyword and continue on Failure             KW: Globally evalutaing to the excel sheet.

KW: Read the people excel template after downloading.
    run keyword and continue on Failure             KW: Open people excel.
    run keyword and continue on Failure             KW People excel, switch to sheet Matchmaking Fields (Read Only)
    @{data sheet}=      Read sheet data         get_column_names_from_header_row=${TRUE}
    FOR     ${row}      IN      @{data sheet}
        Log list        ${row}
    END
    run keyword and continue on Failure             KW: To save & close the workbook to the specified path.

KW: Assert the Matchmaking Fields (Read Only) sheet with all the data's.
    run keyword and continue on Failure             KW: Open people excel.
    run keyword and continue on Failure             KW: Interacting with the Excel sheet Matchmaking Fields (Read Only).

    ${read_Interest}=      Read From Cell      A1
    Should Be Equal     ${read_Interest}        Interest        formatter=str
    ${read_Writing_and_Publishing}=      Read From Cell      A40
    Should Be Equal     ${read_Writing_and_Publishing}        Writing and Publishing        formatter=str

    ${read_Industry}=      Read From Cell      B1
    Should Be Equal     ${read_Industry}        Industry        formatter=str
    ${read_Travel_sector}=      Read From Cell      B40
    Should Be Equal     ${read_Travel_sector}        Travel sector        formatter=str

    ${read_Looking_For/Offering}=      Read From Cell       C1
    Should Be Equal     ${read_Looking_For/Offering}        Looking For/Offering        formatter=str
    ${read_operation_specilist}=      Read From Cell      C31
    Should Be Equal     ${read_operation_specilist}        operation specilist        formatter=str

    # run keyword and continue on Failure             KW: To save & close the workbook to the specified path.

KW: Assert the Attendee Data. sheet with all the data's.
    run keyword and continue on Failure             KW: Open people excel.
    run keyword and continue on Failure             KW: Interacting with the Excel sheet Attendee Data.

    ${read_Interest}=      Read From Cell      A1
    Should Be Equal     ${read_Interest}        People Bulk Upload Sheet Add People. Enter one attendee per row. Upload the edited excel back Legends - (Req) - Required (Opt) - Optional        formatter=str      strip_spaces=True       collapse_spaces=True

    ${read_Email_ID_(Req.)}=      Read From Cell      A4
    Should Be Equal     ${read_Email_ID_(Req.)}        Email ID (Req.)        formatter=str

    ${read_Enter_the Email_ID of the attendee}=      Read From Cell      A5
    Should Be Equal     ${read_Enter_the Email_ID of the attendee}        Enter the Email ID of the attendee        formatter=str

    ${read_First Name (Req.)}=      Read From Cell      B4
    Should Be Equal     ${read_First Name (Req.)}        First Name (Req.)        formatter=str

    ${read_Last Name (Req.)}=      Read From Cell      C4
    Should Be Equal     ${read_Last Name (Req.)}        Last Name (Req.)        formatter=str

    run keyword and continue on Failure             KW: To save & close the workbook to the specified path.

KW: Writing/Adding single row data to the people excel sheet.
    run keyword and continue on Failure             KW: Open people excel.
    run keyword and continue on Failure             KW: Interacting with the Excel sheet Attendee Data.

    ${excel_email}=     FakerLibrary.Email
    set global variable     ${excel_email}
    Write To Cell       A${Next_Row_Evalute}        ${excel_email}

    ${excel_fname}=     FakerLibrary.First Name
    Write To Cell       B${Next_Row_Evalute}        ${excel_fname}

    ${excel_lname}=     FakerLibrary.Last Name
    Write To Cell       C${Next_Row_Evalute}        ${excel_lname}

    ${excel_designation}=     FakerLibrary.Job
    Write To Cell       D${Next_Row_Evalute}        ${excel_designation}

    ${excel_organization}=     FakerLibrary.Company
    Write To Cell       E${Next_Row_Evalute}        ${excel_organization}

    run keyword and continue on Failure             KW: To save & close the workbook to the specified path.

KW: Read the last row of the people excel sheet and assert on the cms people list.
    run keyword and continue on Failure             KW: Open people excel.
    run keyword and continue on Failure             KW: Interacting with the Excel sheet Attendee Data.

    ${read_excel_email}=        Read From Cell      A${The all row count is}
    ${read_excel_fname}=        Read From Cell      B${The all row count is}
    ${read_excel_lname}=        Read From Cell      C${The all row count is}
    ${read_excel_designation}=        Read From Cell      D${The all row count is}
    ${read_excel_org}=        Read From Cell      E${The all row count is}

    QWeb.Verify All     ${read_excel_email}, ${read_excel_fname}, ${read_excel_lname}, ${read_excel_designation}, ${read_excel_org}

    run keyword and continue on Failure             KW: To save & close the workbook to the specified path.

KW: Verify the fname & lname on the lounge list view bulk upload added.
    run keyword and continue on Failure             KW: Open people excel.
    run keyword and continue on Failure             KW: Interacting with the Excel sheet Attendee Data.

    ${read_excel_email}=        Read From Cell      A${The all row count is}
    ${read_excel_fname}=        Read From Cell      B${The all row count is}
    ${read_excel_lname}=        Read From Cell      C${The all row count is}
    ${read_excel_designation}=        Read From Cell      D${The all row count is}
    ${read_excel_org}=        Read From Cell      E${The all row count is}

    Wait Until Keyword Succeeds         30sec       10sec        QWeb.Verify All      ${read_excel_fname}, ${read_excel_lname}

    run keyword and continue on Failure             KW: To save & close the workbook to the specified path.
    
KW: List the download Directories In Directory for room excel sheet.
    ${room_excel_sheet}=        List Files In Directory       ${download_folder}      *.xlsx        absolute=False
    set global variable     ${room_excel_sheet}

KW: Move rooms files from download folder into project folder.
    run keyword and continue on Failure             KW: List the download Directories In Directory for room excel sheet.
    ${length} =     Get Length      ${room_excel_sheet}
    FOR     ${index}        IN RANGE        ${length}
        QWeb.Move Files     ${room_excel_sheet}[${index}]     ${rooms destination_folder}
    END

KW: List the rooms Directories In Directory and select the latest excel.
    ${room__excel_sheets_list}=        List Files In Directory       ${rooms_folder}      *.xlsx
    set global variable     ${room__excel_sheets_list}

KW: Get the length of the rooms excel lists.
    run keyword and continue on Failure             KW: List the rooms Directories In Directory and select the latest excel.
    ${length_rooms_excel_sheets_list} =     Get Length      ${room__excel_sheets_list}
    set global variable     ${length_rooms_excel_sheets_list}

KW: Fetch only the rooms latest excel sheet download.
    run keyword and continue on Failure             KW: Get the length of the rooms excel lists.
    ${fetching_latest_rooms_excel_sheet}=      Get From List       ${room__excel_sheets_list}       -1
    set global variable     ${fetching_latest_rooms_excel_sheet}

KW: Delete all the rooms excel sheets in the people folder.
    run keyword and continue on Failure             KW: Get the length of the rooms excel lists.
    FOR     ${index}        IN RANGE        ${length_rooms_excel_sheets_list}
        Remove Files     ${rooms_folder}${room__excel_sheets_list}[${index}]
    END

KW: Open rooms excel.
    run keyword and continue on Failure             KW: Fetch only the rooms latest excel sheet download.
    Open Workbook       ${rooms_folder}${fetching_latest_rooms_excel_sheet}         alias=room excelsheet

KW Rooms excel, switch to sheet Room Data
    Switch Sheet        Room Data

KW: Interacting with the Excel sheet Room Data.
    run keyword and continue on Failure             KW Rooms excel, switch to sheet Room Data
    run keyword and continue on Failure             KW: Get the Column Count.
    run keyword and continue on Failure             KW: Get the Row Count.
    run keyword and continue on Failure             KW: Globally evalutaing to the excel sheet.

KW: Read the rooms excel template after downloading.
    run keyword and continue on Failure             KW: Open rooms excel.
    run keyword and continue on Failure             KW Rooms excel, switch to sheet Room Data
    @{data sheet}=      Read sheet data         get_column_names_from_header_row=${TRUE}
    FOR     ${row}      IN      @{data sheet}
        Log list        ${row}
    END
    run keyword and continue on Failure             KW: To save & close the workbook to the specified path.

KW: Assert the rooms header Fields sheet with all the room data's.
    run keyword and continue on Failure             KW: Open rooms excel.
    run keyword and continue on Failure             KW: Interacting with the Excel sheet Room Data.

    ${read_info}=      Read From Cell      A1
    Should Be Equal     ${read_info}        Rooms Bulk Upload Sheet Add Room. Enter one Room information per row. Upload the edited excel back Legends - (Req) - Required (Opt) - Optional        formatter=str      strip_spaces=True       collapse_spaces=True

    ${read_Room Name (Req.)}=      Read From Cell      A4
    Should Be Equal     ${read_Room Name (Req.)}        Room Name (Req.)        formatter=str

    ${read_Room Name (Req.) details}=      Read From Cell      A5
    Should Be Equal     ${read_Room Name (Req.) details}        Enter the Name of the Room. Maximum 80 characters        formatter=str      strip_spaces=True       collapse_spaces=True

    ${read_Room Description (Req.)}=      Read From Cell      B4
    Should Be Equal     ${read_Room Description (Req.)}        Room Description (Req.)        formatter=str

    ${read_Room Description (Req.) details}=      Read From Cell      B5
    Should Be Equal     ${read_Room Description (Req.) details}        Enter the Description of the Room. Maximum 150 characters        formatter=str       strip_spaces=True       collapse_spaces=True

    ${read_Room Purpose (Req.)}=      Read From Cell      C4
    Should Be Equal     ${read_Room Purpose (Req.)}        Room Purpose (Req.)        formatter=str

    ${read_Room Purpose (Req.) details}=      Read From Cell      C5
    Should Be Equal     ${read_Room Purpose (Req.) details}        Possible Values: SINGLE/MULTIPLE        formatter=str

    ${read_Session Start Date}=      Read From Cell      D4
    Should Be Equal     ${read_Session Start Date}        Session Start Date        formatter=str

    ${read_Session Start Date details}=      Read From Cell      D5
    Should Be Equal     ${read_Session Start Date details}        This is required if Room Purpose is SINGLE. Format YYYY/MM/DD        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Session Start Time}=      Read From Cell      E4
    Should Be Equal     ${read_Session Start Time}        Session Start Time        formatter=str

    ${read_Session Start Time details}=      Read From Cell      E5
    Should Be Equal     ${read_Session Start Time details}        This is required if Room Purpose is SINGLE. Format HH:mm (24hr format)        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Session End Date}=      Read From Cell      F4
    Should Be Equal     ${read_Session End Date}        Session End Date        formatter=str

    ${read_Session End Date details}=      Read From Cell      F5
    Should Be Equal     ${read_Session End Date details}        This is required if Room Purpose is SINGLE. Format YYYY/MM/DD        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Session End Time}=      Read From Cell      G4
    Should Be Equal     ${read_Session End Time}        Session End Time        formatter=str

    ${read_Session End Time details}=      Read From Cell      G5
    Should Be Equal     ${read_Session End Time details}        This is required if Room Purpose is SINGLE. Format HH:mm (24hr format)        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Who can join the Room (Req.)}=      Read From Cell      H4
    Should Be Equal     ${read_Who can join the Room (Req.)}        Who can join the Room (Req.)        formatter=str

    ${read_Who can join the Room (Req.) details}=      Read From Cell      H5
    Should Be Equal     ${read_Who can join the Room (Req.) details}        Possible Values: ANYONE/GROUPS/CODED/PRIVATE        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Choose The People Who Can Participate In This Private Room}=      Read From Cell      I4
    Should Be Equal     ${read_Choose The People Who Can Participate In This Private Room}        Choose The People Who Can Participate In This Private Room        formatter=str

    ${read_Choose The People Who Can Participate In This Private Room details}=      Read From Cell      I5
    Should Be Equal     ${read_Choose The People Who Can Participate In This Private Room details}        If 'Who can join the Room' is PRIVATE then Mention the email IDs of people here as comma separated list.        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Choose Groups}=      Read From Cell      J4
    Should Be Equal     ${read_Choose Groups}        Choose Groups        formatter=str

    ${read_Choose Groups details}=      Read From Cell      J5
    Should Be Equal     ${read_Choose Groups details}        This is required if Who can join the Room is GROUPS. Mention the IDs of Group as comma separated list. Refer the Group ID column in the Groups(Read Only) Sheet        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Choose CODE}=      Read From Cell      K4
    Should Be Equal     ${read_Choose CODE}        Choose CODE        formatter=str

    ${read_Choose CODE details}=      Read From Cell      K5
    Should Be Equal     ${read_Choose CODE details}        This is required if Who can join the Room is CODED        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Who can Share Audio/Video in the room (Req.)}=      Read From Cell      L4
    Should Be Equal     ${read_Who can Share Audio/Video in the room (Req.)}        Who can Share Audio/Video in the room (Req.)        formatter=str

    ${read_Who can Share Audio/Video in the room (Req.) details}=      Read From Cell      L5
    Should Be Equal     ${read_Who can Share Audio/Video in the room (Req.) details}        Possible Values: ANYONE/MODERATED        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Choose Moderators}=      Read From Cell      M4
    Should Be Equal     ${read_Choose Moderators}        Choose Moderators        formatter=str

    ${read_Choose Moderators details}=      Read From Cell      M5
    Should Be Equal     ${read_Choose Moderators details}        This is required if Who can share Audio/Video in the room is chosen as 'MODERATED'. Mention the email IDs of moderators as comma separated list.        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Maximum Video (Req.)}=      Read From Cell      N4
    Should Be Equal     ${read_Maximum Video (Req.)}        Maximum Video (Req.)        formatter=str

    ${read_Maximum Video (Req.) details}=      Read From Cell      N5
    Should Be Equal     ${read_Maximum Video (Req.) details}        Choose the maximum number of videos that will be displayed at a time in room. Enter a number less than 12.Default Value is 12        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Assign Room to a Virtual Booth}=      Read From Cell      O4
    Should Be Equal     ${read_Assign Room to a Virtual Booth}        Assign Room to a Virtual Booth        formatter=str

    ${read_Assign Room to a Virtual Booth details}=      Read From Cell      O5
    Should Be Equal     ${read_Assign Room to a Virtual Booth details}        Mention the ID of the Virtual Booth. Refer the Virtual Booth ID column in the Virtual Booth(Read Only) Sheet        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Priority (Req.)}=      Read From Cell      P4
    Should Be Equal     ${read_Priority (Req.)}        Priority (Req.)        formatter=str

    ${read_Priority (Req.) details}=      Read From Cell      P5
    Should Be Equal     ${read_Priority (Req.) details}        Enter a number less than 999        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_gurupoint Unique ID}=      Read From Cell      Q4
    Should Be Equal     ${read_gurupoint Unique ID}        gurupoint Unique ID        formatter=str

    ${read_gurupoint Unique ID details}=      Read From Cell      Q5
    Should Be Equal     ${read_gurupoint Unique ID details}        This is a read only column. Do not delete this column        formatter=str        strip_spaces=True       collapse_spaces=True

    ${read_Remarks}=      Read From Cell      Q4
    Should Be Equal     ${read_Remarks}        Remarks        formatter=str

    ${read_Remarks details}=      Read From Cell      Q5
    Should Be Equal     ${read_Remarks details}        Pass any other variables to store ID        formatter=str        strip_spaces=True       collapse_spaces=True

    run keyword and continue on Failure             KW: To save & close the workbook to the specified path.
