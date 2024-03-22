*** Settings ***
Documentation    Suite for Fetching the Booking Ids details.
Resource        ../main_setup_teardown/setup_teardown_func.robot
Resource        ../pom_keywords/kw_1_auth_create_token.robot
Resource        ../main_setup_teardown/user_agents.robot

*** Variables ***
${API BOOKING ID END POINT}      /booking
${Cell Value2}    value
${Header}    value
${Cell Value}    value
${GETResponse of perticular id}    value
${Reading B column data}    value
${Reading C column data}    value
${Reading D column data}    value
${Reading E column data}    value
${Reading H column data}    value
${The all row count is}    value
${GETResponse of all id}    value

*** Keywords ***
KW: Response of the GET Request for single id.
    [Documentation]
    ...     The response viewer helps to ensure the correctness of API responses.
    ...     An API response consists of the body, headers, and the status code.
    ...     It organizes body and headers in different forms.
    ...     The status code and the completion time of the API call is visible.
    ...     The response also contains the HTTP specification default description.
    ...     However, API authors can also add custom message.
####################################################################################
    ${GETResponse of perticular id}=        GET On Session
    ...                 Restful_Brooker      ${API BOOKING ID END POINT}/${Cell Value}
    ...                 headers=${Header}
    set global variable     ${GETResponse of perticular id}
####################################################################################


KW: Response of the GET Request for all ids.
    [Documentation]
    ...     The response viewer helps to ensure the correctness of API responses.
    ...     An API response consists of the body, headers, and the status code.
    ...     It organizes body and headers in different forms.
    ...     The status code and the completion time of the API call is visible.
    ...     The response also contains the HTTP specification default description.
    ...     However, API authors can also add custom message.
####################################################################################
    ${GETResponse of all id}=        GET On Session
    ...                 Restful_Brooker      ${API BOOKING ID END POINT}/${Cell Value2}
    ...                 headers=${Header}
    set global variable     ${GETResponse of all id}
####################################################################################



*** Test Cases ***
TC-1 [GET] FETCH DATA's OF THE LAST CELL IDS THE CREATED BOOKING ID's - SUCCESSFUL(Valid)
    [Documentation]     This TC is to fetch the last saved created booking ids.
    [Tags]              Positive
#    Skip                Skipping for debug
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    Given KW: To open the workbook to the specified path.
    Given KW: Interacting with the Excel sheet1.
    Given KW: Fetching the last value of the saved ids from the sheet1.
    
    run keyword and continue on failure     KW: Creating Auth or Token POST Session.
    run keyword and continue on failure     KW: Request Header.
    run keyword and continue on failure     KW: Response of the GET Request for single id.

    # Convert a string to a JSON object
    # content String content to convert into JSON
    # pretty_print If defined, will output JSON is pretty print format
    ${jsondata_}=       To Json        ${GETResponse of perticular id.content}      pretty_print=True
    log to console      ${jsondata_}
    set global variable    ${jsondata_} 
    Status Should Be    200     ${GETResponse of perticular id}
    Request Should Be Successful        ${GETResponse of perticular id}


    # Converting the Responses Booking ID & Boolean Value that has been received to STRING format by assing the responses to a variable.
    # After the conversion of the response received, is sent directly to the EXCEL to the respective A & E Column for Data-driven testing (DDT).
    ${GET_json}=    Convert String to JSON    ${jsondata_}

    ${first name}=          Get Value From Json       ${GET_json}       $.firstname
    ${last name}=           Get Value From Json       ${GET_json}       $.lastname
    ${additional needs}=    Get Value From Json       ${GET_json}       $.additionalneeds
    ${total price}=         Get Value From Json       ${GET_json}       $.totalprice
    ${deposit paid}=        Get Value From Json       ${GET_json}       $.depositpaid

    ${first name from the list}=            get from list   ${first name}           0
    ${last name from the list}=             get from list   ${last name}            0
    ${additional needs from the list}=      get from list   ${additional needs}     0
    ${total price from the list}=           get from list   ${total price}          0
    ${deposit paid from the list}=          get from list   ${deposit paid}         0

    ${Converting paid data to string}=      convert to string       ${deposit paid from the list}

    KW: Fetch the B Column data according to the row count.
    KW: Fetch the C Column data according to the row count.
    KW: Fetch the D Column data according to the row count.
    KW: Fetch the E Column data according to the row count.
    KW: Fetch the H Column data according to the row count.

    Should Be Equal     ${Reading B column data}        ${first name from the list}
    Should Be Equal     ${Reading C column data}        ${last name from the list}
    Should Be Equal     ${Reading D column data}        ${total price from the list}
    Should Be Equal     ${Reading E column data}        ${Converting paid data to string}
    Should Be Equal     ${Reading H column data}        ${additional needs from the list}

    KW: To save & close the workbook to the specified path.

TC-2 [GET] FETCH ALL DATA's OF THE IDS CREATED BOOKING ID's USING FOR LOOP - SUCCESSFUL(Valid)
    [Documentation]     This TC is to fetch the last saved created booking ids.
    [Tags]              Positive
#    Skip                Skipping for debug
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    Given KW: To open the workbook to the specified path.
    Given KW: Interacting with the Excel sheet1.
    run keyword and continue on failure     KW: Creating Auth or Token POST Session.
    run keyword and continue on failure     KW: Request Header.

    FOR     ${Count}    IN RANGE        2        ${The all row count is}+1
        Continue For Loop If        '${Count}'==${The all row count is}
        set global variable     ${Count}
        ${Cell Value2}=      Read From Cell      A${Count}
        set global variable     ${Cell Value2}
        run keyword and continue on failure     KW: Response of the GET Request for all ids.

        ${jsondata_all_id}=    To Json    ${GETResponse of all id.content}      pretty_print=True
        log to console      ${jsondata_all_id}
        Status Should Be    200     ${GETResponse of all id}
        Request Should Be Successful        ${GETResponse of all id}
        
        # Converting the Responses Booking ID & Boolean Value that has been received to STRING format by assing the responses to a variable.
        # After the conversion of the response received, is sent directly to the EXCEL to the respective A & E Column for Data-driven testing (DDT).
        ${GET_json}=    Convert String to JSON    ${jsondata_all_id}

        ${first name}=          Get Value From Json       ${GET_json}       $.firstname
        ${last name}=           Get Value From Json       ${GET_json}       $.lastname
        ${additional needs}=    Get Value From Json       ${GET_json}       $.additionalneeds
        ${total price}=         Get Value From Json       ${GET_json}       $.totalprice
        ${deposit paid}=        Get Value From Json       ${GET_json}       $.depositpaid

        ${first name from the list}=            get from list   ${first name}           0
        ${last name from the list}=             get from list   ${last name}            0
        ${additional needs from the list}=      get from list   ${additional needs}     0
        ${total price from the list}=           get from list   ${total price}          0
        ${deposit paid from the list}=          get from list   ${deposit paid}         0

        ${Converting paid data to string}=      convert to string       ${deposit paid from the list}
        ${Converting total price to string}=    convert to string       ${total price from the list}

        KW: Fetch the B Column data according to the row count for all.
        KW: Fetch the C Column data according to the row count for all.
        KW: Fetch the D Column data according to the row count for all.
        KW: Fetch the E Column data according to the row count for all.
        KW: Fetch the H Column data according to the row count for all.

        run keyword and continue on failure     Should Be Equal     ${Reading B column data}        ${first name from the list}
        run keyword and continue on failure     Should Be Equal     ${Reading C column data}        ${last name from the list}
        run keyword and continue on failure     Should Be Equal     ${Reading D column data}        ${Converting total price to string}
        run keyword and continue on failure     Should Be Equal     ${Reading E column data}        ${Converting paid data to string}
        run keyword and continue on failure     Should Be Equal     ${Reading H column data}        ${additional needs from the list}
    END
    
    KW: To save & close the workbook to the specified path.
