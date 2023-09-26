*** Settings ***
Documentation   This is a common variable robot file. Where every individual variable will be written and used multiple times.
Resource        ../main_setup_teardown/setup_teardown_func.robot

*** Keywords ***
KW: Create session
    [Documentation]
    ...     Create a HTTP session to a server.
    ...     With an alias, where Robot Framework alias is to identify the session.
    ...     Including the Base url of the server
    ...     Verify HTTPS request is being made in Robot Framework.
    [Arguments]     ${session_name}     ${arg_api_base_url}
    create session      ${session_name}      ${arg_api_base_url}      verify=True

KW: Request Header.
    [Documentation]
    ...     APIs require to send particular headers along with requests, typically to provide additional metadata about the operation that are performing.
    ...     Can set these up in the Headers.
    ...     Enter any key-value pairs needed and it will be send along with the request.
    # [Arguments]     ${arg_header}

    KW for User Agent
    ${Header}=     create dictionary
    ...         User-Agent=${useragent}
    ...         Content-Type=application/json
    ...         accept=application/json
    set global variable     ${Header}

***Test Cases***
ABCD        
    KW: Create session      ${session_restful_brooker}      ${api_base_url}
    KW: Request Header.

