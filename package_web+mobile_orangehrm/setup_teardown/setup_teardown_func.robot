*** Settings ***
Documentation   This setting is for Suite Setup, Suite Teardown, Test Setup & Test Teardown.

# Library         SeleniumLibrary
Library         QWeb
Library         BuiltIn
Library         Collections
Library         OperatingSystem
Library         AutoRecorder
Library         FakerLibrary        locale=en_US
Library         ExcellentLibrary
Library         String
Library         Dialogs
# Library         SikuliLibrary       mode=NEW
# Library         DebugLibrary
# Library         ScreenCapLibrary

Variables       ../test_data/td_page_guru_bank.py
Resource        ../pom_locaters_and_keywords/kw_signup.robot
Resource        ../setup_teardown/excel_execllent_library.robot
Resource        ../setup_teardown/image_qweb_function.robot
Resource        ../setup_teardown/dummy_faker.robot
Resource        ../setup_teardown/dates_time.robot
Resource        ../pom_locaters_and_keywords/kw_signup.robot


*** Variables ***
${site_url}             https://opensource-demo.orangehrmlive.com
${admin_url}            https://opensource-demo.orangehrmlive.com

${orange_hrm_username}          Admin
${orange_hrm_password}          admin123

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
    
    Run Keyword if      "${first_browser_name}" == "headlesschrome"     QWeb.Open Browser        ${site_url}     chrome        -headless, --allow-running-insecure-content, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${first_browser_name}" == "chrome"             QWeb.Open Browser        ${site_url}      chrome       --allow-running-insecure-, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${first_browser_name}" == "headlessfirefox"    QWeb.Open Browser        ${site_url}      firefox       -headless   --allow-running-insecure-content, prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"

    ...     ELSE IF     "${first_browser_name}" == "firefox"            QWeb.Open Browser        ${site_url}      firefox      --allow-running-insecure-content    prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"
    
    ...     ELSE IF     "${first_browser_name}" == "safari"            QWeb.Open Browser         ${site_url}      safari       --allow-running-insecure-content

    ...     ELSE        QWeb.Open Browser        ${site_url}      ${first_browser_name}     --allow-running-insecure-content

    # KW: Delete all the people excel sheets in the people folder.
    # KW: Delete all the rooms excel sheets in the people folder.

KW: Browser Invokes for communitysecond_browser_name.
    [Documentation]  This is a section where browsers invoke keywords are mentioned using library QWeb.
    ...     "--marionette" "--allow-running-insecure-content" "--xyz" "-foreground" "-no-remote" "-profile" "-headless" "-private" "--use-fake-ui-for-media-stream" "--use-fake-device-for-media-stream" "--allow-file-access" "--ignore-ssl-errors" "--ignore-certificate-errors-spki-list"  "--disable-dev-shm-usage"  "--no-sandbox"

    Set Global Variable     ${second_browser_name}
    Run Keyword if      "${second_browser_name}" == "headlesschrome"     QWeb.Open Browser        ${admin_url}     chrome        -headless, --allow-running-insecure-content, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${second_browser_name}" == "chrome"             QWeb.Open Browser        ${admin_url}      chrome       --allow-running-insecure-, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${second_browser_name}" == "headlessfirefox"    QWeb.Open Browser        ${admin_url}      firefox       -headless   --allow-running-insecure-content, prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"

    ...     ELSE IF     "${second_browser_name}" == "firefox"            QWeb.Open Browser        ${admin_url}      firefox       --allow-running-insecure-content    prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"

    ...     ELSE IF     "${second_browser_name}" == "safari"            QWeb.Open Browser        ${admin_url}      safari

    ...     ELSE        QWeb.Open Browser        ${admin_url}      ${second_browser_name}     --allow-running-insecure-content

KW: Sleep Mode
    [Documentation]  This section is for the time to wait.
    BuiltIn.Sleep   2 seconds

KW: Browser TearDown
    [Documentation]  This section will close the browser after the execution.
    QWeb.Delete All Cookies
    QWeb.Close Browser

KW: Close all browser TearDown
    [Documentation]  This section will close all the browser after the execution.
    QWeb.Delete All Cookies
    QWeb.Close All Browsers

KW: To scroll to the bottom of the page.
    [Documentation]  This section will scroll to the bottom of the page.
    QWeb.Execute JavaScript    window.scrollTo(900,900)    # Scroll to the bottom of the page.

KW: To scroll to the top of the page.
    [Documentation]  This section will scroll to the top of the page.
    QWeb.Execute JavaScript    window.scrollTo(0,0)   # Scroll to the top of the page.

KW: Refresh page.
    QWeb.Refresh Page

KW: SetConfig to WindowSize.
    SetConfig    WindowSize     3360x2100       #1920x1080     #1680x1050  #3360x2100

KW: Maximize the Window.
    QWeb.Maximize Window
    #KW: SetConfig to WindowSize.

KW: Switch back to main tab, dashboard.
    QWeb.Switch Window       1

KW: Switch to 2nd tab.
    QWeb.Switch Window       2

KW: Close current window tab.
    QWeb.Delete All Cookies
    QWeb.Close Window

KW: Close all windows except the current one.
    QWeb.Delete All Cookies
    QWeb.Close Others

KW: Open new tab.
    Open Window

KW: Switch to Firefox as 1.
    QWeb.Switch Browser      1

KW: Switch to Chrome as 2.
    QWeb.Switch Browser      2

KW: Switch to other browser as 3 or new or latest on.
    QWeb.Switch Browser      NEW

KW: Pause the execution.
    Pause Execution         Test execution paused. Press OK to continue.