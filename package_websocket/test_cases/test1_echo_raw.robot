*** Settings ***
Documentation           This robot file will execute only the raw cases.
Resource                ../settings/setup_teardown_func.robot
Suite Setup             KW: Environment Specific    ${environment}



*** Test Cases ***
TC1: WS Connect, set timeout, get timeout, assert timeout and close the socket.
    [Documentation]     This TC is to Connect, set timeout, get timeout, assert timeout and close the socket.
    [Tags]              positive    smoke
#    Skip                Skipping for debug
#    Pass Execution      Passed the tc's.
#    Fail                Failed tc's & deprecated smoke test.
    run keyword and continue on failure                KW: WebSocketClient Connect                    ${ws host url}                    ${ws path}        ${None}
    run keyword and continue on failure                KW: WebSocketClient Settimeout                 ${websocket session_name}         ${settimeout time}
    run keyword and continue on failure                KW: WebSocketClient Gettimeout                 ${websocket session_name}
    Run Keyword And Continue On Failure                KW: WebSocket BulitIn Response Assertion       ${settimeout time}                ${gettimeout converted to string}
    run keyword and continue on failure                KW: WebSocketClient Close                      ${websocket session_name}


TC2: WS Connect, get header, status & assert status, header and close the socket with reason.
    [Documentation]     This TC is to Connect, get header, status & assert status, header and close the socket with reason.
    [Tags]              positive    smoke
    # Skip                Skipping for debug
#    Pass Execution      Passed the tc's.
#    Fail                Failed tc's & deprecated smoke test.
    run keyword and continue on failure                KW: WebSocketClient Connect                    ${ws host url}                        ${ws path}    ${None}
    Run Keyword And Continue On Failure                KW: WebSocketClient Getheaders                 ${websocket session_name}
    Run Keyword And Continue On Failure                KW: WebSocketClient Getstatus                  ${websocket session_name}
    Run Keyword And Continue On Failure                KW: WebSocket BulitIn Response Assertion       ${get status code}                    ${getstatus converted to string}
    run keyword and continue on failure                KW: WebSocketClient Close With Reason          ${websocket session_name}             ${ws get status}        ${close reason} 


TC3: WS Connect, send text, receive & assert the recieve text and close the socket with reason.
    [Documentation]     This TC is to Connect, send text, receive & assert the recieve text and close the socket with reason.
    [Tags]              positive    smoke
#    Skip                Skipping for debug
#    Pass Execution      Passed the tc's.
#    Fail                Failed tc's & deprecated smoke test.
    run keyword and continue on failure                KW: WebSocketClient Connect                    ${ws host url}                        ${ws path}    ${None}
    Run Keyword And Continue On Failure                KW: WebSocketClient Send                       ${websocket session_name}             ${texts}
    Run Keyword And Continue On Failure                KW: WebSocketClient Recv                       ${websocket session_name}
    Run Keyword And Continue On Failure                KW: WebSocket BulitIn Response Assertion       ${texts}                              ${receive results converted to string}
    run keyword and continue on failure                KW: WebSocketClient Close With Reason          ${websocket session_name}             ${ws get status}        ${close reason} 


TC4: WS Connect, send binary text, ping and close the socket with reason.
    [Documentation]     This TC is to Connect, send binary text, ping and close the socket with reason.
    [Tags]              positive    sanity
#    Skip                Skipping for debug
#    Pass Execution      Passed the tc's.
#    Fail                Failed tc's & deprecated smoke test.
    run keyword and continue on failure                KW: WebSocketClient Connect                    ${ws host url}                        ${ws path}    ${None}
    Run Keyword And Continue On Failure                KW: WebSocketClient Send Binary                ${websocket session_name}             ${binary characters}
    Run Keyword And Continue On Failure                KW: WebSocketClient Ping                       ${websocket session_name}             ${ping value}
    run keyword and continue on failure                KW: WebSocketClient Close With Reason          ${websocket session_name}             ${ws get status}        ${close reason}   


TC5: WS Connect websocket to null resrve keyword end point.
    [Documentation]     This TC is to Connect, send text, receive & assert the recieve text and close the socket with reason.
    [Tags]              negative    sanity
#    Skip                Skipping for debug
#    Pass Execution      Passed the tc's.
#    Fail                Failed tc's & deprecated smoke test.
    run keyword and continue on failure                KW: WebSocketClient Connect                    ${ws host url}                        null    ${None}