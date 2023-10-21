*** Settings ***
Documentation    Suite for Updating Booking.
Resource        ../pom_keywords/kw_2_createbooking.robot
Resource        ../pom_keywords/kw_5_updating_booking.robot
Resource        ../pom_keywords/kw_6_partialupdatebooking.robot


***Variables***
${JWToken}      token=
${Response}    value
${Next_Row_Evalute}    value
${Cell Value}    value


***Test Cases***
TC-1 [PATCH] Updates a current booking with a partial payload - SUCCESSFUL
    [Documentation]     This TC is to create booking with user details.
    [Tags]              Positive
#    Skip                Positive Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # Called the Keywords to the Test Cases, where it will open, count the row & column and evalute to the next row.
    Given KW: To open the workbook to the specified path.

    Given KW: Create firstName & LastName using Faker.
    When KW: Partial Update Booking PATCH Session.

    Given KW: Interacting with the Excel sheet2.
    Then KW: Request PATCH Header.
    And KW: PATCH Body with JSON Keys & Value.

    Then KW: Interacting with the Excel sheet1.
    Then KW: Fetching the last value of the saved ids from the sheet1.
    run keyword and continue on failure        KW: Response of the PATCH Request.

    KW: Interacting with the Excel sheet4.

    KW: Saving the current date&time to excel.

    # After the conversion of the response received, is sent directly to the EXCEL to the respective K Column for Data-driven testing (DDT).
    ${The cumalative response is}=     convert to string       ${Response}
    Write To Cell       K${Next_Row_Evalute}        ${The cumalative response is}

    # Converting the Responses Code that has been received to STRING format by assing the responses to a variable.
    # After the conversion of the response received, is sent directly to the EXCEL to the respective I Column for Data-driven testing (DDT).
    ${Status_Code}=     convert to string       ${Response.status_code}
    Write To Cell       I${Next_Row_Evalute}        ${Status_Code}

    Write To Cell       A${Next_Row_Evalute}        ${Cell Value}

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

    ${response 1st name}=     Get Value From Json       ${json}       $.firstname
    # ${response 1st name get from list}=    get from list   ${response 1st name}   0
    ${first_name_to_String}=     convert to string       ${response 1st name}
    Write To Cell       B${Next_Row_Evalute}        ${first_name_to_String}

    ${response last name}=     Get Value From Json       ${json}       $.lastname
    # ${response last name get from list}=    get from list   ${response last name}   0
    ${last_name_to_String}=     convert to string       ${response last name}
    Write To Cell       C${Next_Row_Evalute}        ${last_name_to_String}

    # Return True if the session has been already created
    # alias that has been used to identify the Session object in the cache
    ${exists}=    Session Exists    Restful_Brooker
    Should Be True    ${exists}

    # Convert a string to a JSON object
    # content String content to convert into JSON
    ${JSON_Convert}=     convert to string       ${Response.json()}
    log to console      ${JSON_Convert}

    # Importing the Keyword to save the excelsheet with added data and close it for future references.
    Then KW: To save & close the workbook to the specified path.