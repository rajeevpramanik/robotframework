*** Settings ***
Documentation    Suite for Updating Booking.
Resource        ../pom_keywords/kw_2_createbooking.robot
Resource        ../pom_keywords/kw_5_updating_booking.robot
Resource        ../pom_keywords/kw_6_partialupdatebooking.robot
Resource        ../main_setup_teardown/setup_teardown_func.robot
Resource        ../main_setup_teardown/user_agents.robot


***Variables***
${JWToken}      token=
${API BOOKING ID END POINT}      /booking
${Cell Value}    value
${Header}    value
${useragent}    value
${Reading C column data}    value
${DELETEResponse}    value

***Keywords***
KW: Response of the DELETE Request.
    [Documentation]
    ...     The response viewer helps to ensure the correctness of API responses.
    ...     An API response consists of the body, headers, and the status code.
    ...     It organizes body and headers in different forms.
    ...     The status code and the completion time of the API call is visible.
    ...     The response also contains the HTTP specification default description.
    ...     However, API authors can also add custom message.
####################################################################################
    ${DELETEResponse}=        DELETE On Session
    ...                 Restful_Brooker      ${API BOOKING ID END POINT}/${Cell Value}
    ...                 headers=${Header}
    set global variable     ${DELETEResponse}
####################################################################################

KW: Request DELETE Header.
    [Documentation]
    ...     APIs require to send particular headers along with requests, typically to provide additional metadata about the operation that are performing.
    ...     Can set these up in the Headers.
    ...     Enter any key-value pairs needed and it will be send along with the request.
    
    KW for User Agent
    KW: Fetch the C Column data according to the row count.
####################################################################################
    ${Header}=      create dictionary
    ...         User-Agent=${useragent}
    ...         Content-Type=application/json
    ...         Cookie=${JWToken}${Reading C column data}
    set global variable     ${Header}
####################################################################################


***Test Cases***
TC-1 [DELETE] Delete the craeted booking. - SUCCESSFUL
    [Documentation]     This TC is to create booking with user details.
    [Tags]              Positive
#    Skip                Positive Test
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    # Called the Keywords to the Test Cases, where it will open, count the row & column and evalute to the next row.
    Given KW: To open the workbook to the specified path.

    Given KW: Interacting with the Excel sheet2.
    Then KW: Request DELETE Header.

    Then KW: Interacting with the Excel sheet1.
    Then KW: Fetching the last value of the saved ids from the sheet1.
    run keyword and continue on failure        KW: Response of the DELETE Request.

    # Converting the Responses Content that has been received to STRING format by assing the responses to a variable.
    # After the conversion of the response content, is sent directly to the EXCEL to the respective J Column for Data-driven testing (DDT).
    ${Delete_JSON_Content}=     convert to string       ${DELETEResponse.content}
    set global variable     ${Delete_JSON_Content}

    # Importing the Keyword to save the excelsheet with added data and close it for future references.
    Then KW: To save & close the workbook to the specified path.