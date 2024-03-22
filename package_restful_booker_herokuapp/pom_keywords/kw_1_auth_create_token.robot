*** Settings ***
Documentation   POM or Variables and Keywords for creating Auth or Token.
Resource        ../main_setup_teardown/setup_teardown_func.robot
Resource        ../main_setup_teardown/user_agents.robot


*** Variables ***
${API AUTH END POINT}      /auth
${useragent}    value
${Body}    value
${Header}    value
${Next_Row_Evalute}    value


*** Keywords ***
KW: Creating Auth or Token POST Session.
    [Documentation]
    ...     Create a HTTP session to a server.
    ...     With an alias, where Robot Framework alias is to identify the session.
    ...     Including the Base url of the server
    ...     Verify HTTPS request is being made in Robot Framework.
    [Arguments]        ${arg api base url}        ${arg verify}
####################################################################################
    create session      Restful_Brooker      ${arg api base url}    verify=${arg verify}
####################################################################################


KW: Request Header.
    [Documentation]
    ...     APIs require to send particular headers along with requests, typically to provide additional metadata about the operation that are performing.
    ...     Can set these up in the Headers.
    ...     Enter any key-value pairs needed and it will be send along with the request.

    KW for User Agent
####################################################################################
    ${Header}=      create dictionary
    ...         User-Agent=${useragent}
    ...         Content-Type=application/json
    ...         accept=application/json
    set global variable     ${Header}
####################################################################################


KW: POST Body with JSON Keys & Value.
    [Documentation]     Need to send body data using KEY-VALUE pairs with requests whenever need to add or update structured data.
####################################################################################  
    ${Body}=        Catenate
    ...     {
    ...         "username" : "admin",
    ...         "password" : "password123"
    ...     }
    set global variable     ${Body}
    Write To Cell       A${Next_Row_Evalute}        admin
    Write To Cell       B${Next_Row_Evalute}        password123
####################################################################################


KW: Response of the POST Request.
    [Documentation]
    ...     The response viewer helps to ensure the correctness of API responses.
    ...     An API response consists of the body, headers, and the status code.
    ...     It organizes body and headers in different forms.
    ...     The status code and the completion time of the API call is visible.
    ...     The response also contains the HTTP specification default description.
    ...     However, API authors can also add custom message.
####################################################################################
    ${Response}=        POST On Session
    ...                 Restful_Brooker      ${API AUTH END POINT}
    ...                 data=${Body}
    ...                 headers=${Header}
    set global variable     ${Response}
####################################################################################


KW: POST Body with Invalid JSON Keys & Value.
    [Documentation]     Need to send body data using KEY-VALUE pairs with requests whenever need to add or update structured data.
####################################################################################  
    ${Body}=        Catenate
    ...     {
    ...         "username" : "admin",
    ...         "password" : "password123!@#"
    ...     }
    set global variable     ${Body}
####################################################################################