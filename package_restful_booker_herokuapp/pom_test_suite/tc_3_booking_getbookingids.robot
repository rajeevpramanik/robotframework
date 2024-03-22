*** Settings ***
Documentation    Suite for Fetching the Booking Ids.
Resource        ../main_setup_teardown/setup_teardown_func.robot
Resource        ../pom_keywords/kw_1_auth_create_token.robot
Resource        ../main_setup_teardown/user_agents.robot

*** Variables ***
${API BOOKING END POINT}      /booking
${Header}    value
${GETResponse}    value

*** Keywords ***
KW: Response of the GET Request.
    [Documentation]
    ...     The response viewer helps to ensure the correctness of API responses.
    ...     An API response consists of the body, headers, and the status code.
    ...     It organizes body and headers in different forms.
    ...     The status code and the completion time of the API call is visible.
    ...     The response also contains the HTTP specification default description.
    ...     However, API authors can also add custom message.
####################################################################################
    ${GETResponse}=        GET On Session
    ...                 Restful_Brooker      ${API BOOKING END POINT}
    ...                 headers=${Header}
    set global variable     ${GETResponse}
####################################################################################


*** Test Cases ***
TC-1 [GET] FETCH ALL THE CREATED BOOKING ID's - SUCCESSFUL(Valid)
    [Documentation]     This TC is to fetch all the created booking ids.
    [Tags]              Positive
#    Skip                Skipping for debug
#    Pass Execution      Passing the test case   deprecated	-regression
#    Fail                Failing the text case   Deprecated  Smoke Test

    run keyword and continue on failure     KW: Creating Auth or Token POST Session.
    run keyword and continue on failure     KW: Request Header.
    run keyword and continue on failure     KW: Response of the GET Request.

    # Convert a string to a JSON object
    # content String content to convert into JSON
    # pretty_print If defined, will output JSON is pretty print format
    ${jsondata_}=    To Json    ${GETResponse.content}      pretty_print=True
    log to console      ${jsondata_}
    Status Should Be    200     ${GETResponse}
    Request Should Be Successful        ${GETResponse}