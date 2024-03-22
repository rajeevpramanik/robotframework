*** Settings ***
Library     SeleniumLibrary


*** Variable ***
${site_url}             http://demo.guru99.com
${admin_url}            https://meet.jit.si/rajeev_kumar

##################################################
#${first_browser_name}      headlesschrome
#${first_browser_name}      chrome
# ${first_browser_name}     headlessfirefox
${first_browser_name}      firefox
#${first_browser_name}      edge
#${first_browser_name}      safari
##################################################
#${second_browser_name}     headlesschrome
${second_browser_name}     chrome
#${second_browser_name}     headlessfirefox
#${second_browser_name}     firefox
#${second_browser_name}     edge
#${second_browser_name}     safari
##################################################

*** Keywords ***
KW: Browser Invokes SetUp first_browser_name.
    [Documentation]  This is a section where browsers invoke keywords are mentioned using library QWeb.
    ...     "--marionette" "--allow-running-insecure-content" "--xyz" "-foreground" "-no-remote" "-profile" "-headless" "-private" "--use-fake-ui-for-media-stream" "--use-fake-device-for-media-stream" "--allow-file-access" "--ignore-ssl-errors" "--ignore-certificate-errors-spki-list"  "--disable-dev-shm-usage"  "--no-sandbox"

    Set Global Variable     ${first_browser_name}
    
    Run Keyword if      "${first_browser_name}" == "headlesschrome"     SeleniumLibrary.Open Browser        ${site_url}     chrome        -headless, --allow-running-insecure-content, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${first_browser_name}" == "chrome"             SeleniumLibrary.Open Browser        ${site_url}      chrome       --allow-running-insecure-, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${first_browser_name}" == "headlessfirefox"    SeleniumLibrary.Open Browser        ${site_url}      firefox       -headless   --allow-running-insecure-content, prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"

    ...     ELSE IF     "${first_browser_name}" == "firefox"            SeleniumLibrary.Open Browser        ${site_url}      firefox      #--allow-running-insecure-content    prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"
    
    ...     ELSE IF     "${first_browser_name}" == "safari"            SeleniumLibrary.Open Browser         ${site_url}      safari       --allow-running-insecure-content

    ...     ELSE        SeleniumLibrary.Open Browser        ${site_url}      ${first_browser_name}     --allow-running-insecure-content

    # KW: Delete all the people excel sheets in the people folder.
    # KW: Delete all the rooms excel sheets in the people folder.

KW: Browser Invokes for communitysecond_browser_name.
    [Documentation]  This is a section where browsers invoke keywords are mentioned using library QWeb.
    ...     "--marionette" "--allow-running-insecure-content" "--xyz" "-foreground" "-no-remote" "-profile" "-headless" "-private" "--use-fake-ui-for-media-stream" "--use-fake-device-for-media-stream" "--allow-file-access" "--ignore-ssl-errors" "--ignore-certificate-errors-spki-list"  "--disable-dev-shm-usage"  "--no-sandbox"

    Set Global Variable     ${second_browser_name}
    Run Keyword if      "${second_browser_name}" == "headlesschrome"     SeleniumLibrary.Open Browser        ${admin_url}     chrome        -headless, --allow-running-insecure-content, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${second_browser_name}" == "chrome"             SeleniumLibrary.Open Browser        ${admin_url}      chrome       #--allow-running-insecure-, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${second_browser_name}" == "headlessfirefox"    SeleniumLibrary.Open Browser        ${admin_url}      firefox       -headless   --allow-running-insecure-content, prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"

    ...     ELSE IF     "${second_browser_name}" == "firefox"            SeleniumLibrary.Open Browser        ${admin_url}      firefox       --allow-running-insecure-content    prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"

    ...     ELSE IF     "${second_browser_name}" == "safari"            SeleniumLibrary.Open Browser        ${admin_url}      safari

    ...     ELSE        SeleniumLibrary.Open Browser        ${admin_url}      ${second_browser_name}     --allow-running-insecure-content


*** Test Case ***
TC1: Launch Fire fox.
    KW: Browser Invokes SetUp first_browser_name.
    Maximize Browser Window
    Sleep       5s

TC2: Launch Chrome.
    KW: Browser Invokes for communitysecond_browser_name.
    Maximize Browser Window
    Sleep       5s

TC3: Switch Firefox Browser
    Switch Browser      1
    Sleep       5s
    ${firefox title}=       Get Title
    Log     ${firefox title}

TC4: Switch Chrome Browser
    Switch Browser      2
    Sleep       5s
    ${chrome title}=       Get Title
    Log     ${chrome title}

TC5: Close all the opened browsers.
    Close All Browsers