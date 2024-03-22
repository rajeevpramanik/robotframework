*** Settings ***
Documentation    Suite for Create Booking.
Resource        ../pom_keywords/kw_2_createbooking.robot


*** Variables ***
${Response}    value
${Next_Row_Evalute}    value




*** Test Cases ***
TC-1 [POST] CREATE BOOKING FOR THE BOOK - SUCCESSFUL
    [Documentation]     This TC is to create booking with user details.
    [Tags]              Positive
#    Skip                Positive Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test


    # Called the Keywords to the Test Cases, where it will open, count the row & column and evalute to the next row.
    Given KW: To open the workbook to the specified path.
    Given KW: Interacting with the Excel sheet1.

    Given KW: Create firstName & LastName using Faker.
    Then KW: Saving the 1st & Last name to excel.

    And KW: Create total price using Faker.
    Then KW: Saving the fake price value to excel.

    Then KW: Create dummy word using Faker.
    KW: Saving the fake word to excel.

    And KW: Today's Date is.
    Then KW: Saving the current date to excel.
    Then KW: Saving the current date&time to excel.

    Then KW: Future's Date is.
    And KW: Saving the future date to excel.
    
    And KW: List for Random True & False.

    When KW: Creating Booking POST Session.
    Then KW: Request Header.
    And KW: POST Body with JSON Keys & Value.
    run keyword and continue on failure        KW: Response of the POST Request.


    # After the conversion of the response received, is sent directly to the EXCEL to the respective K Column for Data-driven testing (DDT).
    ${The cumalative response is}=     convert to string       ${Response}
    Write To Cell       K${Next_Row_Evalute}        ${The cumalative response is}


    # Converting the Responses Code that has been received to STRING format by assing the responses to a variable.
    # After the conversion of the response received, is sent directly to the EXCEL to the respective I Column for Data-driven testing (DDT).
    ${Status_Code}=     convert to string       ${Response.status_code}
    Write To Cell       I${Next_Row_Evalute}        ${Status_Code}


    # Used the Run BuiltIn Keyword for the TRY-CATCH exceptional handling.
    # Comparing the Dynamic Status code with Static Status Code.
    should be equal     ${Status_Code}      200


    # Checking the presence of the Dynamic status on the received response.
    Status Should Be    200     ${Response}
    Request Should Be Successful        ${Response}

    # Converting the Responses Content that has been received to STRING format by assing the responses to a variable.
    # After the conversion of the response content, is sent directly to the EXCEL to the respective J Column for Data-driven testing (DDT).
    ${JSON_Content}=     convert to string       ${Response.content}
    Write To Cell       J${Next_Row_Evalute}        ${JSON_Content}
    set global variable     ${JSON_Content}

    # Converting the Responses Booking ID & Boolean Value that has been received to STRING format by assing the responses to a variable.
    # After the conversion of the response received, is sent directly to the EXCEL to the respective A & E Column for Data-driven testing (DDT).
    ${json}=    Convert String to JSON    ${JSON_Content}
    ${Booking_ID_Code}=     Get Value From Json       ${json}       $.bookingid
    ${Booking_ID_Code_fetching_from_list}=    get from list   ${Booking_ID_Code}   0
    ${Booking_ID_Code_String}=     convert to string       ${Booking_ID_Code_fetching_from_list}
    Write To Cell       A${Next_Row_Evalute}        ${Booking_ID_Code_String}
    # log     ${Booking_ID_Code_String}

    ${depositpaid_true_or_false}=     Get Value From Json       ${json}       $.booking.depositpaid
    ${depositpaid_true_or_false get from list}=    get from list   ${depositpaid_true_or_false}   0
    ${true_or_false_to_String}=     convert to string       ${depositpaid_true_or_false get from list}
    Write To Cell       E${Next_Row_Evalute}        ${true_or_false_to_String}

    # Return True if the session has been already created
    # alias that has been used to identify the Session object in the cache
    ${exists}=    Session Exists    Restful_Brooker
    Should Be True    ${exists}

    # Convert a string to a JSON object
    # content String content to convert into JSON
    # pretty_print If defined, will output JSON is pretty print format
    
    # ${jsondata}=    To Json    ${Response.content}      pretty_print=True
    # log to console      ${jsondata}
    
    ${JSON_Convert}=     convert to string       ${Response.json()}
    # log to console      ${JSON_Convert}

    # Importing the Keyword to save the excelsheet with added data and close it for future references.
    Then KW: To save & close the workbook to the specified path.


TC-2 [POST] CREATE BOOKING FOR THE BOOK - UNSUCCESSFUL(Invalid Body)
    [Documentation]     This TC is to create booking with user details.
    [Tags]              Negative
#    Skip                Regression Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test


    # Called the Keywords to the Test Cases, where it will open, count the row & column and evalute to the next row.
    Given KW: Create firstName & LastName using Faker.
    And KW: Create total price using Faker.
    Then KW: Create dummy word using Faker.
    And KW: Today's Date is.
    Then KW: Future's Date is.
    And KW: List for Random True & False.

    When KW: Creating Booking POST Session.
    Then KW: Without Request Header.
    run keyword and continue on failure     KW: Another POST Body with JSON Keys & Value.
    Run Keyword And Warn On Failure     KW: Response of the Invalid POST Request.
