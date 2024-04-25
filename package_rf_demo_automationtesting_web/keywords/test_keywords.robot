*** Settings ***
Resource    ../settings/setup_teardown.robot



*** Variables ***


*** Keywords ***
KW: Appstate
    [Documentation]    Appstate is a pre-condition of a test case.
    [Tags]    Config    Error handling
    [Arguments]          ${customkeyword}
    QWeb.Appstate        block=${customkeyword}

KW: Back
    [Documentation]    Navigates back in the current window.
    [Tags]    Browser    Interaction
    Qweb.Back

KW: Capture Icon
    [Documentation]    Take a screenshot of an element.
    [Tags]    Icon    Interaction
    [Arguments]            ${str_locator}            ${str_folder}            ${str_filename}                ${timeout}
    QWeb.Capture Icon      locator=${str_locator}    folder=${str_folder}     filename=${str_filename}       timeout=${timeout}

KW: Set Config
    [Documentation]    Set configuration parameter to given value. Return previous value.
    ...    Here is the link to use the required parameter: https://qentinelqi.github.io/qweb/QWeb.html#Set%20Config
    ...    Example like (Case Insensitive, Check Input Value, etc.)
    [Tags]    Config
    [Arguments]        ${parameter}        ${default value}
    QWeb.Set Config    par=${parameter}    val=${default value}

KW: Click Cell
    [Documentation]    Click table cell.
    ...    Locates cell by coordinates or text from active table and clicks it.
    [Tags]    Interaction    Tables
    [Arguments]        ${coordinates}                ${anchor}            ${timeout}            ${index}
    QWeb.Click Cell    coordinates=${coordinates}    anchor=${anchor}     timeout=${timeout}    index=${index}