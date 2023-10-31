*** Settings ***
Documentation   This is a common function robot file. Where every individual function keywords will be written and used multiple times. 
Resource        ../settings/setup_teardown_func.robot


*** Variables ***
${websocket session_name}
${websocket receive results}
${websocket receivedata results}
${ws Getsubprotocol}
${ws get status}
${ws get headers}
${ws gettimeout}
${gettimeout converted to string}
${getstatus converted to string}
${receive results converted to string}
${receive data results converted to string}
${json values}
${json content}
${list value}
${ws json object}


*** Keywords ***
KW: WebSocketClient Connect
    [Documentation]
    ...     Create a WebSocket session to a server.
    ...     With an alias, where Robot Framework alias is to identify the session.
    ...     Ex: wss://ws.postman-echo.com/raw    header=["User-Agent: MyProgram","x-custom: header"]
    [Arguments]        ${ws_host_url_arg}         ${ws_paths_arg}        ${headers}
    ${websocket session_name}=    WebSocketClient.Connect        ${ws_host_url_arg}/${ws_paths_arg}    header=${headers}
    set global variable                       ${websocket session_name}

KW: WebSocketClient Settimeout
    [Documentation]        Set the timeout of the Websocket server req.
    [Arguments]            ${websocket session_name_arg}        ${timeout}
    ${timeout_conversion_to_integer}=    BuiltIn.Convert To Integer    ${timeout}
    WebSocketClient.Settimeout   ${websocket session_name_arg}       timeout=${timeout_conversion_to_integer}

KW: WebSocketClient Gettimeout
    [Documentation]        Get the timeout of the Websocket server req.
    [Arguments]            ${websocket session_name_arg}
    ${ws gettimeout}=    WebSocketClient.Gettimeout    ${websocket session_name_arg}
    Set Global Variable    ${ws gettimeout}
    ${gettimeout converted to string}=    BuiltIn.Convert To String    ${ws gettimeout}
    Set Global Variable    ${gettimeout converted to string}

KW: WebSocketClient Getheaders
    [Documentation]        Get the headers of the Websocket server req.
    [Arguments]            ${websocket session_name_arg}
    ${ws get headers}=    WebSocketClient.Getheaders    ${websocket session_name_arg}
    Set Global Variable    ${ws get headers}

KW: WebSocketClient Getstatus
    [Documentation]        Get the status of the Websocket server req.
    [Arguments]            ${websocket session_name_arg}
    ${ws get status}=    WebSocketClient.Getstatus    ${websocket session_name_arg}
    Set Global Variable    ${ws get status}
    ${getstatus converted to string}=    BuiltIn.Convert To String    ${ws get status}
    Set Global Variable    ${getstatus converted to string}

KW: WebSocketClient Getsubprotocol
    [Documentation]        Get the subprotocol of the Websocket server req.
    [Arguments]            ${websocket session_name_arg}
    ${ws Getsubprotocol}=    WebSocketClient.Getsubprotocol    ${websocket session_name_arg}
    Set Global Variable        ${ws Getsubprotocol}

KW: WebSocketClient Ping
    [Documentation]        Ping the Websocket server with Payload.
    [Arguments]            ${websocket session_name_arg}        ${Payload}
    WebSocketClient.Ping    ${websocket session_name_arg}        payload=${Payload}

KW: WebSocketClient Pong
    [Documentation]        Pong the Websocket server with Payload.
    [Arguments]            ${websocket session_name_arg}        ${Payload}
    WebSocketClient.Pong    ${websocket session_name_arg}        payload=${Payload}

KW: WebSocketClient Recv
    [Documentation]        Receive the message from the Websocket server.
    [Arguments]        ${websocket session_name_arg}
    ${websocket receive results}=        WebSocketClient.Recv    ${websocket session_name_arg}
    Set Global Variable        ${websocket receive results}
    ${receive results converted to string}=    BuiltIn.Convert To String    ${websocket receive results}
    Set Global Variable    ${receive results converted to string}

KW: WebSocketClient Recv Data
    [Documentation]        Recv the Data from Websocket server.
    ...     Flag=True/False
    [Arguments]            ${websocket session_name_arg}        ${flag}
    ${websocket receivedata results}=    WebSocketClient.Recv Data    ${websocket session_name_arg}        control_frame=${flag}
    Set Global Variable    ${websocket receivedata results}
    ${receive data results converted to string}=    BuiltIn.Convert To String    ${websocket receive results}
    Set Global Variable    ${receive data results converted to string}

KW: WebSocketClient Send
    [Documentation]        Send the message from the Websocket server.
    [Arguments]            ${websocket session_name_arg}        ${messages}
    WebSocketClient.Send    ${websocket session_name_arg}        ${messages}

KW: WebSocketClient Send Binary
    [Documentation]        Send the message from the Websocket server.
    [Arguments]            ${websocket session_name_arg}        ${Payload}
    WebSocketClient.Send Binary    ${websocket session_name_arg}        payload=${Payload}

KW: WebSocketClient Close
    [Documentation]        Close the opened WebSocket session to a server.
    [Arguments]        ${websocket session_name_arg}
    WebSocketClient.Close    ${websocket session_name_arg}

KW: WebSocketClient Close With Reason
    [Documentation]        Close the websocket server With Reason.
    [Arguments]            ${websocket session_name_arg}        ${ws_status}        ${messages}
    WebSocketClient.Close With Reason    ${websocket session_name_arg}        ${ws_status}        ${messages}

KW: WebSocketClient Send Close
    [Documentation]        Send Close the opened WebSocket session to a server.
    [Arguments]        ${websocket session_name_arg}
    WebSocketClient.Send Close    ${websocket session_name_arg}

KW: WebSocketClient Send Close with Reason
    [Documentation]        Send Close the opened WebSocket session to a server with reason.
    [Arguments]        ${websocket session_name_arg}        ${ws_status}        ${messages}
    WebSocketClient.Send Close With Reason    ${websocket session_name_arg}        ${ws_status}        ${messages}

KW: WebSocket BulitIn Response Assertion
    [Documentation]        Close the websocket server With Reason.
    [Arguments]            ${assertion value}        ${result value}
    BuiltIn.Should Be Equal    ${assertion value}    ${result value}
    
KW: Store response, convert to json & string and then get value from json.
    [Documentation]        Get specific KEY:Value from Json
    [Arguments]        ${response}        ${key}    ${flag}    ${indexes}
    ${json content}=     convert to string       ${response}
    set global variable     ${json content}

    ${json}=    Convert String to JSON    ${json content}
    ${json values}=        Get Value From Json    ${json}        ${key}        fail_on_empty=${flag}
    Set Global Variable        ${json values}

    ${value from the list}=    get from list   ${json values}   ${indexes}
    ${list value}=     convert to string       ${value from the list}
    Set Global Variable        ${list value}
