*** Settings ***
Documentation           This robot file will execute only the raw cases with query parameters.
Resource                ../settings/setup_teardown_func.robot
Suite Setup             KW: Environment Specific    ${environment}


*** Test Cases ***
TC1: WS Connect, send the query parameter, assert the viowel reply and close the socket.
    [Documentation]     This TC is to Connect, send the query parameter, assert the viowel reply and close the socket.
    [Tags]              positive    sanity
#    Skip                Skipping for debug
#    Pass Execution      Passed the tc's.
#    Fail                Failed tc's & deprecated smoke test.
    KW: WebSocketClient Connect                    ${ws host url}                      ${ws raw query-params path}    ${None}
    KW: WebSocketClient Send                       ${websocket session_name}           ${texts}
    KW: WebSocketClient Recv                       ${websocket session_name}
    KW: WebSocketClient Recv                       ${websocket session_name}
    KW: WebSocketClient Recv                       ${websocket session_name}
    KW: WebSocket BulitIn Response Assertion       ${ws results vowels}                ${receive results converted to string}
    KW: WebSocketClient Close                      ${websocket session_name}


TC2: WS Connect to null reserve keyword and validate the reply from the socket server.
    [Documentation]     This TC is to Connect to null reserve keyword and validate the reply from the socket server.
    [Tags]              positive    sanity
#    Skip                Skipping for debug
#    Pass Execution      Passed the tc's.
#    Fail                Failed tc's & deprecated smoke test.
    Run Keyword And Continue On Failure            KW: WebSocketClient Connect                    ${ws host url}                                  ${ws null query-params path}    ${None}
    Run Keyword And Continue On Failure            KW: WebSocketClient Recv                       ${websocket session_name}
    Run Keyword And Continue On Failure            KW: Store response, convert to json & string and then get value from json.                     ${websocket receive results}        $.Error    true    0
    Run Keyword And Continue On Failure            KW: WebSocket BulitIn Response Assertion       ${ws Query parameter not found alert}           ${list value}
    Run Keyword And Continue On Failure            KW: Store response, convert to json & string and then get value from json.                     ${websocket receive results}        $.Description    true    0
    Run Keyword And Continue On Failure            KW: WebSocket BulitIn Response Assertion       ${ws parameter name key alert}                  ${list value}
    Run Keyword And Continue On Failure            KW: WebSocketClient Recv                       ${websocket session_name}
    Run Keyword And Continue On Failure            KW: WebSocket BulitIn Response Assertion       ${ws Configure the request alert}               ${receive results converted to string}
