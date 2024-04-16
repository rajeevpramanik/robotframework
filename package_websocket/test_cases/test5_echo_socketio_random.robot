*** Settings ***
Documentation           This robot file will execute only the raw cases with json.
Resource                ../settings/setup_teardown_func.robot
Suite Setup             KW: Environment Specific    ${environment}


*** Variables ***
${websocket session_name}    value




*** Test Cases ***
TC1: WS Connect with place to randomize from 0-1, v4, handshake path to random assert the reply and close the socket.
    [Documentation]     This TC is to Connect, send with valid json, assert the reply and close the socket.
    [Tags]              positive    sanity
#    Skip                Skipping for debug
#    Pass Execution      Passed the tc's.
#    Fail                Failed tc's & deprecated smoke test.
    Run Keyword And Continue On Failure            KW: WebSocketClient Connect        ${ws host url}        socketio    ${None}
    Run Keyword And Continue On Failure            KW: WebSocketClient Recv        ${websocket session_name}
