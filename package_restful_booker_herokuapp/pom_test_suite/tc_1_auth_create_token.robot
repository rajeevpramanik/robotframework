*** Settings ***
Documentation    TC for Creating Auth or Token.
Resource        ../main_setup_teardown/setup_teardown_func.robot
Resource        ../pom_keywords/kw_1_auth_create_token.robot


*** Variables ***
${Response}    value
${Next_Row_Evalute}    value




*** Test Cases ***
TC-1 [POST] CREATE AUTH OR TOKEN FOR THE BOOK - SUCCESSFUL(Valid)
    [Documentation]     This TC is to create AUTH or TOKEN with user credentials.
    [Tags]              Positive
#    Skip                Skipping for debug
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # Called the Keywords to the Test Cases, where it will open, count the row & column and evalute to the next row.
    Given KW: To open the workbook to the specified path.        ${The work book}
    Given KW: Interacting with the Excel sheet2.

    When KW: Creating Auth or Token POST Session.    ${API BASE URL}    True
    Then KW: Request Header.
    And KW: POST Body with JSON Keys & Value.
    run keyword and continue on failure        KW: Response of the POST Request.
    

    # Converting the Responses Code that has been received to STRING format by assing the responses to a variable.
    # After the conversion of the response received, is sent directly to the EXCEL to the respective I Column for Data-driven testing (DDT).
    ${Status_Code}=     convert to string       ${Response.status_code}
    Write To Cell       D${Next_Row_Evalute}        ${Status_Code}

    # Used the Run BuiltIn Keyword for the TRY-CATCH exceptional handling.
    # Comparing the Dynamic Status code with Static Status Code.
    should be equal     ${Status_Code}      200

    # Checking the presence of the Dynamic status on the received response.
    Status Should Be    200     ${Response}
    Request Should Be Successful        ${Response}

    # Converting the Responses Content that has been received to STRING format by assing the responses to a variable.
    # After the conversion of the response content, is sent directly to the EXCEL to the respective J Column for Data-driven testing (DDT).
    ${JSON_Content}=     convert to string       ${Response.content}
    set global variable     ${JSON_Content}

    # Converting the Responses Booking ID & Boolean Value that has been received to STRING format by assing the responses to a variable.
    # After the conversion of the response received, is sent directly to the EXCEL to the respective A & E Column for Data-driven testing (DDT).
    ${json}=    Convert String to JSON    ${JSON_Content}
    ${Auth_Tokon_ID_Code}=     Get Value From Json       ${json}       $.token
    ${Auth_Tokon_ID_Code_from_list}=    get from list   ${Auth_Tokon_ID_Code}   0
    ${Auth_Tokon_ID_Code_String}=     convert to string       ${Auth_Tokon_ID_Code_from_list}
    Write To Cell       C${Next_Row_Evalute}        ${Auth_Tokon_ID_Code_String}

    # Convert a string to a JSON object
    # content String content to convert into JSON
    # pretty_print If defined, will output JSON is pretty print format
    # ${jsondata}=    To Json    ${Response.content}      pretty_print=True
    # log to console      ${jsondata}

    # Importing the Keyword to save the excelsheet with added data and close it for future references.
    Then KW: To save & close the workbook to the specified path.



TC-2 [POST] CREATE AUTH OR TOKEN FOR THE BOOK - UNSUCCESSFUL(Invalid)
    [Documentation]     This TC is to check AUTH or TOKEN with user invalid credentials.
    [Tags]              Negative
#    Skip                Skipping for debug
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure     KW: Creating Auth or Token POST Session.        ${API BASE URL}    True
    run keyword and continue on failure     KW: Request Header.
    run keyword and continue on failure     KW: POST Body with Invalid JSON Keys & Value.
    run keyword and continue on failure     KW: Response of the POST Request.

    # Converting the Responses Code that has been received to STRING format by assing the responses to a variable.
    # Comparing the Dynamic Status code with Static Status Code.
    ${Status_Code}=     convert to string       ${Response.status_code}
    should be equal     ${Status_Code}      200

    # Checking the presence of the Dynamic status on the received response.
    Status Should Be    200     ${Response}
    Request Should Be Successful        ${Response}

    # Checking the response body should contain the excert value for assertion.
    Dictionary Should Contain Value     ${Response.json()}      Bad credentials

    # Converting the Responses Content that has been received to STRING format by assing the responses to a variable.
    # After the conversion of the response content, is sent directly to the EXCEL to the respective J Column for Data-driven testing (DDT).
    ${JSON_Content}=     convert to string       ${Response.content}
    log        ${JSON_Content} 
    set global variable     ${JSON_Content}