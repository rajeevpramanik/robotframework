***Settings***
Documentation   This setting is for common keywords, and will be used wherever needed.

***Variables***
${tab1}                     1
${tab2}                     2
${tabnew}                   NEW
${sleep seconds}            2 seconds
${flag true}                True
${flag false}               False
${waiting duration}         0s
${waiting secs}             5s
${wait till}                15sec
${execute for}              3sec
${index}                    0
${none}                     None


***Keywords***
KW: Execute JavaScript
    [Documentation]  This section will execute the javascript
    ...         Ex: window.scrollTo(900,900) | window.scrollTo(0,0)
    [Arguments]     ${activities}
    QWeb.Execute JavaScript     ${activities}

KW: Sleep Mode
    [Documentation]  This section is for the time to wait.
    [Arguments]     ${sleep durations}
    BuiltIn.Sleep   ${sleep durations}

KW: Refresh page.
    QWeb.Refresh Page

KW: SetConfig to WindowSize.
    [Documentation] Set the current window size
    ...     Ex: 3360x2100   1920x1080   1680x1050   3360x2100
    [Arguments]     ${size}
    SetConfig    WindowSize     ${size}

KW: Set Config Multiple Anchors True or False
    [Documentation]     If MultipleAnchors is set to True, QWeb accepts multiple anchors and selects the first one.
    [Arguments]     ${true or false}
    Set Config    Multiple Anchors      ${true or false}

KW: Set Config Search Direction
    [Documentation]     Set search direction for element search. Search direction is "up", "down", "left", "right" and "closest". "Closest" is the default value.
    [Arguments]     ${which dir}
    Set Config    Search Direction       ${which dir}

KW: Set Config Visibility
    [Documentation]     If set to false no visibility check is made when searching elements.
    ...     SetConfig    Visibility      False  #returns visible and invisible elements
    ...     SetConfig    Visibility      True   #returns only visible elements(default).
    ...     # One time use:
    ...     Ex: ClickItem    Qentinel        visibility=False
    [Arguments]     ${is Visibility}
    Set Config    Visibility       ${is Visibility}

KW: Open new tab.
    Open Window

KW: Switch to tab.
    [Arguments]     ${tab number}
    QWeb.Switch Window       ${tab number}

KW: Switch to browsers.
    [Arguments]     ${browser number}
    QWeb.Switch Browser      ${browser number}

KW: Minimize the Browser_Name window.
    [Arguments]     ${specific_browser_id}
    Evaluate       "${specific_browser_id.minimize_window()}"

KW: Maximize the Browser_Name window.
    [Arguments]     ${specific_browser_id}
    Evaluate       "${specific_browser_id.maximize_window()}"

KW: Browser Backward
    Back

KW: Browser Forward
    Forward

KW: Maximize the Window.
    QWeb.Maximize Window
    #KW: SetConfig to WindowSize.

KW: Pause the execution.
    [Documentation] This keyword will help in pausing the execution.
    [Arguments]             ${message}
    Pause Execution         ${message}

KW: Get current page title
    ${title}=   GetTitle
    Set Global Variable     ${title}

KW: Scroll To
    [Documentation]     This keyword will help to scroll to the given text present using parametrization.
    [Arguments]     ${text}     ${anchor value}         ${locator}              ${scroll length}                    ${timeout wait}
    Scroll To       ${text}     anchor=${anchor value}  locator=${locator}      scroll_length=${scroll length}      timeout=${timeout wait}

KW: Scroll Text
    [Documentation]     Finds text on page and scrolls until it is on top. This is used with visual testing tools to align page properly.
    [Arguments]     ${text}     ${anchor value}             ${timeout wait}
    Scroll Text     ${text}     anchor=${anchor value}      timeout=${timeout wait}

KW: Is Text
    [Documentation]     This keyword will help in check text is present using parametrization.
    [Arguments]     ${text}     ${timeout wait}
    ${is text visible}=       Is Text     ${text}   ${timeout wait}
    Set Global Variable         ${is text visible}

KW: Get Text
    [Documentation]     This keyword will help to get text from the element using parametrization.
    ...     Accepted kwargs:
    ...     between : str/int - Start???End - Return all chars between texts Start and End.
    ...     from_start : int - Return x amount of chars. Starting from first char
    ...     from_end : int - Return x amount of chars. Starting from last char
    ...     include_locator : True - Starting text is part of returned string
    ...     exclude_post : False - Ending text is part of returned string
    ...     int : True - Return integer instead of string
    ...     float : True int - Return float instead of string
    [Arguments]                         ${element}      ${anchor value}             ${timeout wait}                   #${flag}
    ${get text}=        QWeb.Get Text   ${element}      anchor=${anchor value}      timeout=${timeout wait}           #visibility=${flag}
    Set Global Variable     ${get text}

KW: Type Text
    [Documentation]     This keyword will help in typing text in the given element using parametrization.
    [Arguments]     ${element}      ${text}     ${anchor value}             ${timeout wait}                ${index number}          ${flag}                 ${flag}
    Type Text       ${element}      ${text}     anchor=${anchor value}      timeout=${timeout wait}        index=${index number}    partial_match=${flag}   closest_match=${flag}

KW: Click Text
    [Documentation]     This keyword will help in clicking text in the given element using parametrization.
    [Arguments]         ${text}     ${anchor value}             ${timeout wait}             ${javascript}       ${flag}                 ${flag}                 #${flag}
    QWeb.Click Text     ${text}     anchor=${anchor value}      timeout=${timeout wait}     js=${javascript}    partial_match=${flag}   closest_match=${flag}   #visibility=${flag}

KW: Verify Text
    [Documentation]     This keyword will help in verifying text in the given element using parametrization.
    [Arguments]     ${text}     ${anchor value}             ${timeout wait}             ${flag}                 ${flag}
    Verify Text     ${text}     anchor=${anchor value}      timeout=${timeout wait}     partial_match=${flag}   closest_match=${flag}

KW: Verify Element Text
    [Documentation]     Verify that element contains specified text.
    ...     strict : bool - Verify that the texts are an exact match.
    [Arguments]             ${element}      ${text}     ${anchor value}            ${timeout wait}             ${boolean}
    Verify Element Text     ${element}      ${text}     anchor=${anchor value}     timeout=${timeout wait}     strict=${boolean}

KW: Verify All
    [Documentation]     This keyword will help in verifying all text in the given element using parametrization.
    ...     Ex: Cat, Mouse, Dog, Lion, iddqd66402
    [Arguments]     ${texts}    ${timeout wait}
    Verify All      ${texts}    timeout=${timeout wait}

KW: Verify Element
    [Documentation]     This keyword will help in verifying element in the given element using parametrization.
    [Arguments]             ${element}      ${timeout wait}              ${flag}                 ${flag}                ${flag}
    QWeb.Verify Element     ${element}      timeout=${timeout wait}      partial_match=${flag}   closest_match=${flag}  visibility=${flag}

KW: Click Element
    [Documentation]     This keyword will help in click element in the given element using parametrization.
    [Arguments]             ${element}      ${timeout wait}             ${javascript}       ${index number}         ${flag}                 ${flag}                 ${flag}
    QWeb.Click Element      ${element}      timeout=${timeout wait}     js=${javascript}    index=${index number}   partial_match=${flag}   closest_match=${flag}   visibility=${flag}

KW: Hover Element
    [Documentation]     This keyword will help to hover on element using parametrization.
    [Arguments]     ${element}     ${timeout wait}                 ${index number}              ${flag}                     ${flag}
    Hover Element   ${element}     timeout=${timeout wait}         index=${index number}        partial_match=${flag}       closest_match=${flag}


