*** Settings ***
Documentation   This setting is for the reading and writing the data to the excel sheet for reference.

Library         BuiltIn
Library         Collections
Library         FakerLibrary        locale=en_US
Library         ExcellentLibrary
Library         JSONLibrary
Library         DateTime

Variables       ../test_data/td_page_guru_bank.py
Resource        ../pom_locaters_and_keywords/kw_signup.robot
Resource        ../setup_teardown/setup_teardown_func.robot
Resource        ../setup_teardown/excel_execllent_library.robot

*** Variables ***
${The work book}        ../package_qweb_guru_bank/test_excel_ddt/testfile.xlsx

*** Keywords ***
KW: To open the workbook to the specified path.
    Open Workbook       ${The work book}

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

KW: Write username to the excel.
    Write To Cell       B${The all row count is}        ${user_id}

KW: Write password to the excel.
    Write To Cell       C${The all row count is}        ${password}

KW: Create email & save to excel using Faker.
    ${Fake email id}=     FakerLibrary.Safe Email
    set global variable     ${Fake email id}
    Write To Cell       A${Next_Row_Evalute}        ${Fake email id}

KW: Create firstName & LastName using Faker.
    ${Fake_First_Name}=     FakerLibrary.First Name
    ${Fake_Last_Name}=     FakerLibrary.Last Name
    set global variable      ${Fake_First_Name}
    set global variable      ${Fake_Last_Name}
    log     ${Fake_First_Name}
    log     ${Fake_Last_Name}
    # Write To Cell       B${Next_Row_Evalute}        ${Fake_First_Name}
    # Write To Cell       C${Next_Row_Evalute}        ${Fake_Last_Name}

KW: Create total price using Faker.
    ${Faker_Price_Value}=      FakerLibrary.Pyint       min_value=1111     max_value=9999      step=1
    set global variable      ${Faker_Price_Value}
    log     ${Faker_Price_Value}
    # Write To Cell       D${Next_Row_Evalute}        ${Faker_Price_Value}

KW: Create dummy word using Faker.
    ${Faker_words}=      FakerLibrary.Word      ext_word_list=None
    set global variable      ${Faker_words}
    log     ${Faker_words}
    # Write To Cell       H${Next_Row_Evalute}        ${Faker_words}

KW: Today's Date is.
    ${CurrentDate}=  FakerLibrary.Date This Month
    set global variable     ${CurrentDate}
    # Write To Cell       F${Next_Row_Evalute}        ${CurrentDate}
    # Write To Cell       L${Next_Row_Evalute}        ${CurrentDate}

KW: Future's Date is.
    ${FutureDate}=  Future Date
    set global variable     ${FutureDate}
    # Write To Cell       G${Next_Row_Evalute}        ${FutureDate}

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
    log     ${List for True or False}
    ${Length_Of_month_Lists_Items}=    get length  ${List for True or False}
    ${random_NUMBER}=   evaluate    random.randint(0,${Length_Of_month_Lists_Items}-1)
    log     ${random_NUMBER}
    ${The Boolean value is}=    Get From List       ${List for True or False}       ${random_NUMBER}
    set global variable     ${The Boolean value is}
