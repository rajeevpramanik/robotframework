*** Settings ***
Documentation           This robot file will execute only the raw cases with headers.
Resource                ../settings/setup_teardown_func.robot
Suite Setup             KW: Environment Specific    ${environment}


*** Test Cases ***
TC1: WS Connect with valid header, assert the reply and close the socket.
    [Documentation]     This TC is to Connect with header, assert the reply and close the socket.
    [Tags]              positive    sanity
#    Skip                Skipping for debug
#    Pass Execution      Passed the tc's.
#    Fail                Failed tc's & deprecated smoke test.
    ${ws header dic}=      create dictionary        email=rajeev@hotmail.com
    KW: WebSocketClient Connect                    ${ws host url}                      ${ws headers path}    ${ws header dic}
    KW: WebSocketClient Recv                       ${websocket session_name}
    KW: WebSocketClient Recv                       ${websocket session_name}
    KW: WebSocketClient Send                       ${websocket session_name}           ${texts}
    KW: WebSocketClient Recv                       ${websocket session_name}
    KW: WebSocket BulitIn Response Assertion       Number of consonants in all is well are 8        ${receive results converted to string}
    KW: WebSocketClient Close                      ${websocket session_name}


TC2: WS Connect without header, assert the reply and close the socket.
    [Documentation]     This TC is to Connect without header, assert the reply and close the socket.
    [Tags]              positive    sanity
#    Skip                Skipping for debug
#    Pass Execution      Passed the tc's.
#    Fail                Failed tc's & deprecated smoke test.
    Run Keyword And Continue On Failure            KW: WebSocketClient Connect    ${ws host url}    ${ws headers path}    ${None}
    KW: WebSocketClient Recv                       ${websocket session_name}
    KW: WebSocketClient Recv                       ${websocket session_name}