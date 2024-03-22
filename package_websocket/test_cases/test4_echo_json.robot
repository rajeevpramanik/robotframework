*** Settings ***
Documentation           This robot file will execute only the raw cases with json.
Resource                ../settings/setup_teardown_func.robot
Suite Setup             KW: Environment Specific    ${environment}


*** Test Cases ***
TC1: WS Connect, send with valid json, assert the reply and close the socket.
    [Documentation]     This TC is to Connect, send with valid json, assert the reply and close the socket.
    [Tags]              positive    sanity
#    Skip                Skipping for debug
#    Pass Execution      Passed the tc's.
#    Fail                Failed tc's & deprecated smoke test.
    ${ws json object}=              
    ...    Convert String To Json        
    ...    {"orders": [{"name": "Rajeev"},{"email": "rajeev@hotmail.com"},{"id": 99}]}
    ${ws json object stringify}=    Convert Json To String        ${ws json object}
    Run Keyword And Continue On Failure            KW: WebSocketClient Connect                    ${ws host url}                      ${ws json path}    ${None}
    Run Keyword And Continue On Failure            KW: WebSocketClient Send                       ${websocket session_name}           ${ws json object stringify}
    Run Keyword And Continue On Failure            KW: WebSocketClient Recv                       ${websocket session_name}
    Run Keyword And Continue On Failure            KW: WebSocket BulitIn Response Assertion       ${ws send json alert}               ${receive results converted to string}
    Run Keyword And Continue On Failure            KW: WebSocketClient Close                      ${websocket session_name}


TC2: WS Connect, send without json, assert the reply and close the socket.
    [Documentation]     This TC is to Connect, send without json, assert the reply and close the socket.
    [Tags]              positive    sanity
#    Skip                Skipping for debug
#    Pass Execution      Passed the tc's.
#    Fail                Failed tc's & deprecated smoke test.
    Run Keyword And Continue On Failure            KW: WebSocketClient Connect        ${ws host url}                   ${ws json path}    ${None}
    Run Keyword And Continue On Failure            KW: WebSocketClient Send           ${websocket session_name}        ${texts}
    Run Keyword And Continue On Failure            KW: WebSocketClient Recv                       ${websocket session_name}
    Run Keyword And Continue On Failure            KW: Store response, convert to json & string and then get value from json.                     ${websocket receive results}        $.Error    true    0
    Run Keyword And Continue On Failure            KW: WebSocket BulitIn Response Assertion       ${ws Invalid JSON found}                        ${list value}
    Run Keyword And Continue On Failure            KW: Store response, convert to json & string and then get value from json.                     ${websocket receive results}        $.Description    true    0
    Run Keyword And Continue On Failure            KW: WebSocket BulitIn Response Assertion       ${ws JSON response alert}                       ${list value}