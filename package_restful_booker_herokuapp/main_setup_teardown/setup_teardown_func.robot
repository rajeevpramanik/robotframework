*** Settings ***
Documentation   This setting is for DATA to be saved on the excel sheet.
Library         RequestsLibrary
Library         Collections
Library         FakerLibrary
Library         ExcellentLibrary
Library         JSONLibrary
Library         BuiltIn
Library         DateTime
Library         BrowserMobProxyLibrary
Resource        ../main_setup_teardown/user_agents.robot

*** Variables ***
${The work book}        ../package_restful_booker_herokuapp/test_excel_ddt/testfile.xlsx
${API BASE URL}         https://restful-booker.herokuapp.com
${The all row count is}    value
${Next_Row_Evalute}    value
${Fake_First_Name}    value
${Fake_Last_Name}    value
${Faker_Price_Value}    value
${Faker_words}    value
${CurrentDate}    value
${FutureDate}    value
${Count}    value


*** Keywords ***
KW: To open the workbook to the specified path.
    [Documentation]     This Keyword is opening the excelsheets to write & read data's.
    [Arguments]        ${arg the work book}
    Open Workbook       ${arg the work book}

KW: To save & close the workbook to the specified path.
    [Documentation]     This Keyword will help to save all the data's written to the sheet and will close it safely.
    Save
    Close Workbook

KW: Get the Column Count.
    [Documentation]     This Keyword will count the total column used for the active sheet.
    ${The all column count is}=      Get Column Count
    SET GLOBAL VARIABLE     ${The all column count is}

KW: Get the Row Count.
    [Documentation]     This Keyword will count the total row used for the active sheet.
    ${The all row count is}=      Get Row Count
    SET GLOBAL VARIABLE     ${The all row count is}

KW: Globally evalutaing to the excel sheet.
    [Documentation]     This Keyword will evaluate the total row used plus one extra row (EX: 33 rows used + 1 row).
    ${Next_Row_Evalute}=       evaluate     ${The all row count is}+1
    set global variable     ${Next_Row_Evalute}

KW: Create firstName & LastName using Faker.
    [Documentation]     This keyword will help to generate the unique firstName & LastName.
    ${Fake_First_Name}=     FakerLibrary.First Name
    ${Fake_Last_Name}=     FakerLibrary.Last Name
    set global variable      ${Fake_First_Name}
    set global variable      ${Fake_Last_Name}
    log     ${Fake_First_Name}
    log     ${Fake_Last_Name}

KW: Saving the 1st & Last name to excel.
    Write To Cell       B${Next_Row_Evalute}        ${Fake_First_Name}
    Write To Cell       C${Next_Row_Evalute}        ${Fake_Last_Name}

KW: Create total price using Faker.
    [Documentation]     This keyword will help to generate the unique price value.
    ${Faker_Price_Value}=      FakerLibrary.Pyint       min_value=1111     max_value=9999      step=1
    set global variable      ${Faker_Price_Value}
    log     ${Faker_Price_Value}

KW: Saving the fake price value to excel.
    Write To Cell       D${Next_Row_Evalute}        ${Faker_Price_Value}

KW: Create dummy word using Faker.
    [Documentation]     This keyword will help to generate the unique dummy word.
    ${Faker_words}=      FakerLibrary.Word      ext_word_list=None
    set global variable      ${Faker_words}
    log     ${Faker_words}

KW: Saving the fake word to excel.
    Write To Cell       H${Next_Row_Evalute}        ${Faker_words}

KW: Today's Date is.
    [Documentation]     This Keyword will help to generate current date the TC executed.
    ${CurrentDate}=  FakerLibrary.Date This Month
    set global variable     ${CurrentDate}

KW: Saving the current date to excel.
    Write To Cell       F${Next_Row_Evalute}        ${CurrentDate}

KW: Saving the current date&time to excel.
    ${Get current time of system}=      Get Current Date
    Write To Cell       L${Next_Row_Evalute}        ${Get current time of system}

KW: Future's Date is.
    [Documentation]     This Keyword will help to generate future date the TC executed.
    ${FutureDate}=  Future Date
    set global variable     ${FutureDate}

KW: Saving the future date to excel.
    Write To Cell       G${Next_Row_Evalute}        ${FutureDate}

KW: Switch sheets 1.
    [Documentation]     This Keyword will help to switch to the sheet named "Create_User".
    Switch Sheet        Create_Booking

KW: Switch sheets 2.
    [Documentation]     This Keyword will help to switch to the sheet named "Create_Token".
    Switch Sheet        Create_Token

KW: Switch sheets 3.
    [Documentation]     This Keyword will help to switch to the sheet named "Booking_Updated".
    Switch Sheet        Booking_Updated

KW: Switch sheets 4.
    [Documentation]     This Keyword will help to switch to the sheet named "PartialUpdateBooking".
    Switch Sheet        PartialUpdateBooking

KW: Switch sheets 5.
    [Documentation]     This Keyword will help to switch to the sheet named "DeleteBooking".
    Switch Sheet        DeleteBooking

KW: Interacting with the Excel sheet1.
    [Documentation]     This Keyword is calling the other user defined keywords, created above for interaction with sheets 1.
    KW: Switch sheets 1.
    KW: Get the Column Count.
    KW: Get the Row Count.
    KW: Globally evalutaing to the excel sheet.

KW: Interacting with the Excel sheet2.
    [Documentation]     This Keyword is calling the other user defined keywords, created above for interaction with sheets 2.
    KW: Switch sheets 2.
    KW: Get the Column Count.
    KW: Get the Row Count.
    KW: Globally evalutaing to the excel sheet.

KW: Interacting with the Excel sheet3.
    [Documentation]     This Keyword is calling the other user defined keywords, created above for interaction with sheets 3.
    KW: Switch sheets 3.
    KW: Get the Column Count.
    KW: Get the Row Count.
    KW: Globally evalutaing to the excel sheet.

KW: Interacting with the Excel sheet4.
    [Documentation]     This Keyword is calling the other user defined keywords, created above for interaction with sheets 4.
    KW: Switch sheets 4.
    KW: Get the Column Count.
    KW: Get the Row Count.
    KW: Globally evalutaing to the excel sheet.

KW: Interacting with the Excel sheet5.
    [Documentation]     This Keyword is calling the other user defined keywords, created above for interaction with sheets 5.
    KW: Switch sheets 5.
    KW: Get the Column Count.
    KW: Get the Row Count.
    KW: Globally evalutaing to the excel sheet.

KW: List for Random True & False.
    [Documentation]     Flag for Random True or False.
    @{List for True or False}=  create list     true    false
    log     ${List for True or False}
    ${Length_Of_month_Lists_Items}=    get length  ${List for True or False}
    ${random_NUMBER}=   evaluate    random.randint(0,${Length_Of_month_Lists_Items}-1)
    log     ${random_NUMBER}
    ${The Boolean value is}=    Get From List       ${List for True or False}       ${random_NUMBER}
    set global variable     ${The Boolean value is}

KW: Fetching the last value of the saved ids from the sheet1.
    [Documentation]     Fetching the last cell value.
    ${Cell Value}=      Read From Cell      A${The all row count is}
    set global variable     ${Cell Value}

KW: Fetch the B Column data according to the row count.
    ${Reading B column data}=     Read From Cell       B${The all row count is}
    log to console      ${Reading B column data}
    set global variable     ${Reading B column data}

KW: Fetch the C Column data according to the row count.
    ${Reading C column data}=     Read From Cell       C${The all row count is}
    log to console      ${Reading C column data}
    set global variable     ${Reading C column data}

KW: Fetch the D Column data according to the row count.
    ${Reading D column data}=     Read From Cell       D${The all row count is}
    log to console      ${Reading D column data}
    set global variable     ${Reading D column data}

KW: Fetch the E Column data according to the row count.
    ${Reading E column data}=     Read From Cell       E${The all row count is}
    log to console      ${Reading E column data}
    set global variable     ${Reading E column data}

KW: Fetch the H Column data according to the row count.
    ${Reading H column data}=     Read From Cell       H${The all row count is}
    log to console      ${Reading H column data}
    set global variable     ${Reading H column data}

###############################################################################

KW: Fetch the B Column data according to the row count for all.
    ${Reading B column data}=     Read From Cell       B${Count}
    log to console      ${Reading B column data}
    set global variable     ${Reading B column data}

KW: Fetch the C Column data according to the row count for all.
    ${Reading C column data}=     Read From Cell       C${Count}
    log to console      ${Reading C column data}
    set global variable     ${Reading C column data}

KW: Fetch the D Column data according to the row count for all.
    ${Reading D column data from excel}=     Read From Cell       D${Count}
    ${Reading D column data}=        convert to string      ${Reading D column data from excel}
    log to console      ${Reading D column data}
    set global variable     ${Reading D column data}

KW: Fetch the E Column data according to the row count for all.
    ${Reading E column data}=     Read From Cell       E${Count}
    log to console      ${Reading E column data}
    set global variable     ${Reading E column data}

KW: Fetch the H Column data according to the row count for all.
    ${Reading H column data}=     Read From Cell       H${Count}
    log to console      ${Reading H column data}
    set global variable     ${Reading H column data}

    