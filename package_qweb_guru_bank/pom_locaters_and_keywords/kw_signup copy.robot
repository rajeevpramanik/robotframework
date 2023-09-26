*** Settings ***
Documentation   This setting is for the cart module settings.
Library     SeleniumLibrary
Library     QWeb
Library     BuiltIn
Library     DebugLibrary
Library     SikuliLibrary   mode=NEW
Library     FakerLibrary        locale=en_US
Library     ExcellentLibrary
Library     Dialogs

Variables       ../Robot_Page_Objects_Model_Repo/Page_Elements_for_payment_gateway.py
Variables       ../Test_Data/TD_Page_for_payment_gateway.py
Resource        ../Resources/KW_Cart.robot
Resource        ../Resources/TC_SetUp_TearDown.robot

*** Variables ***
${Guru99_Image}         C:/Users/veera/Documents/rajeev_robotframework_project/package_qweb_guru_bank/sikuli_stored_iImages/
${GURU99_LOGO}          ${Guru99_Image}Guru99logo.png
${Toy_Logo}             ${Guru99_Image}Toy.jpg
${Guru99_Payment_Gateway_Logo}     ${Guru99_Image}Payment_Gateway_Element.PNG
${Cart_Logo}            ${Guru99_Image}Cart.PNG
${IS_Buy_Now}           ${Guru99_Image}Buy_Now.PNG
${Quantity_DropDown}    ${Guru99_Image}Quantity_Number_Drop_Down.PNG
${Is_American_Image}    ${Guru99_Image}American_Express.PNG
${Is_Discover_Card_Image}       ${Guru99_Image}Discover_Card.PNG
${Is_Master_Card}       ${Guru99_Image}Master_Card.PNG
${Is_Visa_Image}        ${Guru99_Image}VISA.PNG
${Is_Cartoon1}          ${Guru99_Image}Cartoon1.jpg
${Is_Cartoon2}          ${Guru99_Image}Cartoon2.png
${Is_Cartoon3}          ${Guru99_Image}Cartoon3.jpg
${Is_Cartoon4}          ${Guru99_Image}Cartoon4.jpg
${Is_CVV_Code}          ${Guru99_Image}CVV_Code.PNG
${Is_ExpiryMonth}       ${Guru99_Image}Expiry_Month.PNG
${Is_ExpiryYear}        ${Guru99_Image}Expiry_Year.PNG
${Is_Payment_Half_Button}       ${Guru99_Image}Half_Payment_Button_due_to_dynamic.PNG
${Is_Only_Credit_Card_Field}    ${Guru99_Image}Only_Credit_Card_Field.PNG
${Is_Only_CVV_Code_field}       ${Guru99_Image}Only_CVV_Code_field.PNG
${Is_Only_Expiry_month}         ${Guru99_Image}Only_Expiry_month.PNG
${Is_Only_Expiry_year}          ${Guru99_Image}Only_Expiry_year.PNG

*** Keywords ***
KW: To Mouse Over on the Payment Gateway Project module on the landing page.
    [Documentation]     This KW is to Mouse Over on the Payment Gateway Project module on the landing page.
    Sleep   1 seconds
    Mouse Over      ${Xpath_Payment_Gateway_Project_Element}
    Sleep   1 seconds

KW: To Click on the Payment Gateway Project module on the landing page.
    [Documentation]     This KW is to Click on the Payment Gateway Project module on the landing page.
    Sleep   1 seconds
    Click Element                           ${Xpath_Payment_Gateway_Project_Element}
    run keyword and continue on failure     TC_SetUp_TearDown.KW_3_0: Set Browser Implicit Wait

KW: Compare the Elephant toy using SIKULI.
    [Documentation]     This KW is to Compare the Elephant toy.
    Start Sikuli Process
    Add Image Path          ${Toy_Logo}
    Wait Until Screen Contain   ${Toy_Logo}      2
    Highlight       ${Toy_Logo}
    ${IS EXITS}=    Exists      ${Toy_Logo}      1
    run keyword if      "${IS EXITS}"=="True"       pass execution
    ...     else if     "${IS EXITS}"=="False"      fail
    ...     else        fatal error
    Stop Remote Server

KW: Click on the Guru99 Payment Gateway Element using SIKULI.
    [Documentation]     This KW is to Click on the Guru99 Payment Gateway Element using SIKULI.
    Start Sikuli Process
    Add Image Path          ${Guru99_Payment_Gateway_Logo}
    Wait Until Screen Contain       ${Guru99_Payment_Gateway_Logo}      2
    Highlight       ${Guru99_Payment_Gateway_Logo}
    ${Is_Exist_Payment_Element}     Exists      ${Guru99_Payment_Gateway_Logo}     1
    run keyword if      "${Is_Exist_Payment_Element}"=="True"       click     ${Guru99_Payment_Gateway_Logo}
    run keyword if     "${Is_Exist_Payment_Element}"=="False"      fail
    ...     else        fatal error
    Clear Highlight   ${Guru99_Payment_Gateway_Logo}
    Stop Remote Server

KW: Click on the Cart Element not using SIKULI.
    [Documentation]     This KW is to Click on the Cart element not using SIKULI.
    run keyword and continue on failure     Element Should Be Enabled       ${Xpath_Cart}
    run keyword and continue on failure     Element Should Be Focused       ${Xpath_Cart}
    run keyword and continue on failure     Element Should Be Visible       ${Xpath_Cart}
    run keyword and continue on failure     Element Should Contain          ${Xpath_Cart}       Cart
    run keyword and continue on failure     Element Text Should Be          ${Xpath_Cart}       Cart
    Start Sikuli Process
    run keyword and continue on failure     Highlight                       ${Cart_Logo}
    Clear All Highlights
    Stop Remote Server
    Click Element           ${Xpath_Cart}
    Wait Until Element Is Visible       ${Xpath_Cart}
cd
KW: For Quantity element.
    [Documentation]     This KW is to Quantity & Buy now testing.
    Scroll Element Into View        ${Xpath_Buy_Now}
    run keyword and continue on failure     TC_SetUp_TearDown.KW_3: Sleep Mode
    run keyword and continue on failure     TC_SetUp_TearDown.KW: To scroll to the bottom of the page.
    @{All_Items_In_Quantity_Drop_Down}=           Get List Items    ${Xpath_Quantity}     values=True
    ${Length_Of_Quality_Lists_Items}=    get length  ${All_Items_In_Quantity_Drop_Down}
    ${random_NUMBER}=   evaluate    random.randint(1,${Length_Of_Quality_Lists_Items}-1)
    log     ${random_NUMBER}
    log to console      ${random_NUMBER}
    Click Element                   ${Xpath_Quantity}
    sleep   1   seconds
    Select From List By Index       ${Xpath_Quantity}       ${All_Items_In_Quantity_Drop_Down}[${random_NUMBER}]
    sleep   1   seconds
    run keyword and continue on failure     Click Image      ${Xpath_Product_Image}
    sleep   1   seconds

#    FOR     ${index}    IN RANGE        (${Length_Of_Quality_Lists_Items}-8)
#        log     ${index}    html=true
#        ${random_NUMBER}=   evaluate    random.randint(0,${Length_Of_Quality_Lists_Items}-1)
#        log     ${random_NUMBER}
#        log to console      ${random_NUMBER}
#        Click Element                   ${Xpath_Quantity}
#        Select From List By Index       ${Xpath_Quantity}       ${All_Items_In_Quantity_Drop_Down}[${random_NUMBER}]
#        sleep   1   seconds
#        Select From List By Label       ${Xpath_Quantity}       ${All_Items_In_Quantity_Drop_Down}[${random_NUMBER}]
#        sleep   1 seconds
#        Select From List By Value       ${Xpath_Quantity}       ${All_Items_In_Quantity_Drop_Down}[${random_NUMBER}]
#        sleep   1   seconds
#        Start Sikuli Process
#        Click       ${Toy_Logo}
#        Stop Remote Server
#    END

KW: To Get Text from the quantity dropdown with the help of SIKULI.
    [Documentation]     This KW is Get Text from the quantity dropdown with the help of SIKULI.
    Start Sikuli Process
    Set Library Search Order        SikuliLibrary
    Set Ocr Text Read       true
    run keyword and continue on failure     Get Text        ${Quantity_DropDown}
    sleep   1  seconds
    Stop Remote Server

KW: To do the Price and quantity calculation using selenium and buildIn.
    [Documentation]     This KW is to do the Price and quantity calculation using selenium and buildIn.
    ${The_selected_value}=      Get Value       ${Xpath_Quantity}
    log     ${The_selected_value}
    ${calculatedTotalPriceOfTheProduct} =    set variable    ${20.00}
    ${calculatedTotalPrice}=   Evaluate    ${The_selected_value}*${calculatedTotalPriceOfTheProduct}
    log     ${calculatedTotalPrice}
    set global variable     ${calculatedTotalPrice}

KW: Action on Buy Now button.
    [Documentation]     This KW is to perform action on buy now button.
    run keyword and continue on failure     Element Should Be Enabled     ${Xpath_Buy_Now}
    run keyword and continue on failure     Element Attribute Value Should Be       ${Xpath_Buy_Now}        value       Buy Now
    run keyword and continue on failure     Element Should Be Visible       ${Xpath_Buy_Now}
    run keyword and continue on failure     TC_SetUp_TearDown.KW: To scroll to the bottom of the page.
    Mouse Over      ${Xpath_Buy_Now}
    sleep   1   seconds
    Start Sikuli Process
    Mouse Move      ${IS_Buy_Now}
    SLEEP   1   SECONDS
    Highlight       ${IS_Buy_Now}
    sleep   1   SECONDS
    Clear Highlight     ${IS_Buy_Now}
    sleep   1   seconds
    ${imageCoordinates}=	Get Image Coordinates	${IS_Buy_Now}       # This will get the coordinates of the buy now button.
    Click       ${IS_Buy_Now}
    sleep       1   seconds
    Stop Remote Server
    run keyword and continue on failure     TC_SetUp_TearDown.KW: To scroll to the bottom of the page.
    sleep       1   seconds
    run keyword and continue on failure     TC_SetUp_TearDown.KW: To scroll to the top of the page.

#    ${Card Number}=     Get Value From User     Input the credit card number        default

KW for the process purchase for the toy.
    [Documentation]     This KW is for the process purchase for the toy.
    Start Sikuli Process
    @{wanted_images} =	Create List     ${Is_CVV_Code}      ${Is_ExpiryMonth}       ${Is_ExpiryYear}        ${Is_Payment_Half_Button}
    @{not_wanted_images} =	Create List     ${Is_Cartoon1}	    ${Is_Cartoon2}      ${Is_Cartoon3}
    Wait For Multiple Images	20      10      ${wanted_images}        ${not_wanted_images}
    Page Should Contain             ${Text_for_Payment_Process}
    Wait For Image      ${Is_Visa_Image}    ${Toy_Logo}     2
    Page Should Contain Button      ${Xpath_Pay_Now_with_Price_button}
    Page Should Contain Element     ${Xpath_Card_Number}
    Page Should Contain Element     ${Xpath_Expiration_Month}
    Page Should Contain Element     ${Xpath_Expiration_Year}
    Page Should Contain Element     ${Xpath_CVV_CODE}
    Page Should Contain Image       ${Xpath_for_VISA_Image}
    Page Should Contain Image       ${Xpath_for_Discover_Image}
    Page Should Contain Link        ${Xpath_Generate_Card_Number}
    Page Should Contain Link        ${Xpath_Check_Credit_Card_Limit}
    Page Should Contain List        ${Xpath_Expiration_Month}
    Page Should Contain List        ${Xpath_Expiration_Year}
    Page Should Contain Textfield   ${Xpath_Card_Number}
    Page Should Contain Textfield   ${Xpath_CVV_CODE}
    Screen Should Contain           ${Is_American_Image}
    Stop Remote Server

KW: for testing the Expiration month & year alert present or not using Selenium & Sikuli.
    Scroll Element Into View        ${Xpath_Pay_Now_with_Price_button}
    TC_SetUp_TearDown.KW_3: Sleep Mode
#    run keyword and continue on failure     Mouse Down          ${Xpath_Card_Number}
#    TC_SetUp_TearDown.KW_3: Sleep Mode
#    run keyword and continue on failure     Mouse Up          ${Xpath_Card_Number}
#    TC_SetUp_TearDown.KW_3: Sleep Mode
    run keyword and continue on failure     Mouse Over          ${Xpath_Expiration_Month}
    TC_SetUp_TearDown.KW_3: Sleep Mode
    run keyword and continue on failure     Mouse Out           ${Xpath_Expiration_Month}
    Start Sikuli Process
    Mouse Move      ${Is_Only_Expiry_month}
    TC_SetUp_TearDown.KW_3: Sleep Mode
    Mouse Move      ${Is_Only_Expiry_year}
    TC_SetUp_TearDown.KW_3: Sleep Mode
    Stop Remote Server

KW: Alert for the card number entry.
    @{All_Items_In_Expiry_Month_Drop_Down}=           Get List Items    ${Xpath_Expiration_Month}     values=True
    ${Length_Of_month_Lists_Items}=    get length  ${All_Items_In_Expiry_Month_Drop_Down}
    ${random_NUMBER}=   evaluate    random.randint(1,${Length_Of_month_Lists_Items}-1)
    log     ${random_NUMBER}
    Click Element                   ${Xpath_Expiration_Month}
    sleep   1   seconds
    Select From List By Value       ${Xpath_Expiration_Month}       ${All_Items_In_Expiry_Month_Drop_Down}[${random_NUMBER}]
    sleep   1 seconds
    ${The selected label for the month is}=     Get Selected List Value         ${Xpath_Expiration_Month}
    log     ${The selected label for the month is}
    ${The selected labels for the month is}=    Get Selected List Values        ${Xpath_Expiration_Month}
    log     ${The selected labels for the month is}
    Start Sikuli Process
    Set Library Search Order        SikuliLibrary
    Set Ocr Text Read       true
    Get Text        ${Is_ExpiryMonth}
    sleep   1  seconds
    Stop Remote Server

    @{All_Items_In_Expiry_Year_Drop_Down}=           Get List Items    ${Xpath_Expiration_Year}     values=True
    ${Length_Of_year_Lists_Items}=    get length  ${All_Items_In_Expiry_Year_Drop_Down}
    ${random_NUMBER}=   evaluate    random.randint(1,${Length_Of_year_Lists_Items}-1)
    log     ${random_NUMBER}
    Click Element                   ${Xpath_Expiration_Year}
    sleep   1   seconds
    run keyword and continue on failure         Select From List By Label       ${Xpath_Expiration_Year}       ${All_Items_In_Expiry_Year_Drop_Down}[${random_NUMBER}]
    sleep   1   seconds
    ${The selected value for the year is}=    Get Selected List Label         ${Xpath_Expiration_Year}
    log     ${The selected value for the year is}
    ${The selected values for the year is}=    Get Selected List Labels        ${Xpath_Expiration_Year}
    log     ${The selected values for the year is}
    Start Sikuli Process
    Set Library Search Order        SikuliLibrary
    Set Ocr Text Read       true
    Get Text        ${Is_ExpiryYear}
    sleep   1  seconds
    Stop Remote Server
    run keyword and continue on failure     Click Button     ${Xpath_Pay_Now_with_Price_button}
    run keyword and continue on failure     TC_SetUp_TearDown.KW_3: Sleep Mode
    run keyword and continue on failure     Alert Should Be Present     ${Alert_text_for_Card_Number}
    run keyword and continue on failure     TC_SetUp_TearDown.KW_3: Sleep Mode
    run keyword and continue on failure     TC_SetUp_TearDown.KW_3_0: Set Browser Implicit Wait

KW: Text alert for the Credit card field using Selenium & Sikuli.
    Click Element       ${Xpath_Card_Number}
    run keyword and continue on failure     TC_SetUp_TearDown.KW_3: Sleep Mode
    ${Credit_Card_in}=      FakerLibrary.Password       length=10   special_chars=True  digits=False    upper_case=False    lower_case=False
    log     ${Credit_Card_in}

    Start Sikuli Process
    Highlight       ${Is_Only_Credit_Card_Field}
    sleep   1   seconds
    Input Text      ${Is_Only_Credit_Card_Field}       ${Credit_Card_in}
    sleep   1   seconds
    Textfield Should Contain    ${Xpath_Card_Number}    ${Credit_Card_in}
    Textfield Value Should Be   ${Xpath_Card_Number}    ${Credit_Card_in}
    Set Library Search Order        SikuliLibrary
    Set Ocr Text Read       true
    Get Text        ${Is_Only_Credit_Card_Field}
    sleep   1  seconds
    Wait Until Element Contains     ${Xpath_Card_Number_Special_Characters_are_not_allowed}     Special characters are not allowed
    Element Text Should Be      ${Xpath_Card_Number_Special_Characters_are_not_allowed}     Special characters are not allowed
    Highlight       ${Is_Only_Credit_Card_Field}
    sleep   1   seconds
    Clear Element Text          ${Xpath_Card_Number}
    sleep   1  seconds
    Element Text Should Be      ${Xpath_Card_Number_Field_Cannot_Be_Blank}      Field must not be blank
    Highlight       ${Is_Only_Credit_Card_Field}
    sleep   1   seconds

    Set Library Search Order        SikuliLibrary
    Set Ocr Text Read       true
    Get Text        ${Is_Only_Credit_Card_Field}
    sleep   1  seconds

    ${Credit_Card_char}=      FakerLibrary.Text     max_nb_chars=16     ext_word_list=None
    log     ${Credit_Card_char}

    Highlight       ${Is_Only_Credit_Card_Field}
    sleep   1   seconds

    Set Library Search Order        SeleniumLibrary
    Input Text      ${Xpath_Card_Number}        ${Credit_Card_char}
    sleep   1  seconds
    Set Library Search Order        SeleniumLibrary
    Get Text        ${Xpath_Card_Number}

    Set Library Search Order        SikuliLibrary
    Set Ocr Text Read       true
    Get Text        ${Is_Only_Credit_Card_Field}
    sleep   1  seconds

#    run keyword and continue on failure     Element Text Should Be          ${Xpath_Card_Number_Characters_are_not_allowed}     Characters are not allowed
#    sleep   1   seconds
#    run keyword and continue on failure     Element Text Should Not Be      ${Xpath_Card_Number_Field_Cannot_Be_Blank}     Field must not be blank
#    sleep   1  seconds
#
#    Set Library Search Order        SikuliLibrary
#    Set Ocr Text Read       true
#    Get Text        ${Is_Only_Credit_Card_Field}

    Clear Element Text          ${Xpath_Card_Number}
    sleep   1  seconds
    run keyword and continue on failure     Element Text Should Be      ${Xpath_Card_Number_Field_Cannot_Be_Blank}      Field must not be blank
    Highlight       ${Is_Only_Credit_Card_Field}
    sleep   1   seconds

    Set Library Search Order        SikuliLibrary
    Set Ocr Text Read       true
    Get Text        ${Is_Only_Credit_Card_Field}
    sleep   1  seconds
    Clear Highlight     ${Is_Only_Credit_Card_Field}


    ${Valid_Credit_Card_in}=      FakerLibrary.Credit Card Number
    log     ${Valid_Credit_Card_in}
    Set Library Search Order        SeleniumLibrary
    Input Text      ${Xpath_Card_Number}        ${Valid_Credit_Card_in}
    sleep   1  seconds

    Set Library Search Order        SikuliLibrary
    Set Ocr Text Read       true
    Get Text        ${Is_Only_Credit_Card_Field}
    Stop Remote Server