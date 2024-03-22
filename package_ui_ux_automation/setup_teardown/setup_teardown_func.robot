*** Settings ***
Documentation   This setting is for Suite Setup, Suite Teardown, Test Setup & Test Teardown.

# Library         SeleniumLibrary
Library         QWeb
Library         BuiltIn
Library         Collections
Library         OperatingSystem
Library         AutoRecorder
# Library         SikuliLibrary       mode=NEW
Library         FakerLibrary        locale=en_US
Library         ExcellentLibrary
Library         DebugLibrary
Library         ScreenCapLibrary
Library         String
Library         Dialogs
Library         AppiumLibrary

Variables       ../test_data/td_page_messages.py

Resource        ../common_keywords/common_keywords.robot
Resource        ../setup_teardown/excel_execllent_library.robot
Resource        ../setup_teardown/image_sikuli_function.robot
Resource        ../setup_teardown/dummy_faker.robot
Resource        ../setup_teardown/dates_time.robot
Resource        ../pom_locaters_and_keywords_web/kw_signup.robot
Resource        ../pom_locaters_and_keywords_web/kw_login.robot
Resource        ../pom_locaters_and_keywords_web/kw_onboarding.robot
Resource        ../pom_locaters_and_keywords_web/kw_integration_sso.robot
Resource        ../pom_locaters_and_keywords_web/kw_integration_salesforce.robot
Resource        ../pom_locaters_and_keywords_web/kw_integration_sso_validating.robot
Resource        ../pom_locaters_and_keywords_web/kw_events.robot
Resource        ../pom_locaters_and_keywords_web/kw_people_bulk_upload.robot
Resource        ../pom_locaters_and_keywords_web/kw_lounge_cms.robot
Resource        ../pom_locaters_and_keywords_web/kw_lounge_webcommunity.robot
Resource        ../pom_locaters_and_keywords_web/kw_room_cms.robot
Resource        ../pom_locaters_and_keywords_web/kw_branding_cms.robot
Resource        ../pom_locaters_and_keywords_web/kw_branding_webcommunity.robot
Resource        ../pom_locaters_and_keywords_web/kw_delete_events.robot
Resource        ../pom_locaters_and_keywords_web/kw_ticketing_cms_webcommunity.robot
Resource        ../pom_locaters_and_keywords_web/kw_cookies_policy.robot
Resource        ../pom_locaters_and_keywords_web/kw_logout.robot
Resource        ../pom_locaters_and_keywords_web/kw_chargebee_add_org.robot


*** Variables ***
${ssl proxy site url}       https://sslproxies.org
${proxy ip xpath}           xpath\=(//*[starts-with(@class,'')]//tbody//tr//td)[1]
${port number xpath}        xpath\=(//*[starts-with(@class,'')]//tbody//tr//td)[2]

${environment}              
${superadmincmsurl}       https://admin.${environment}.demogurupoint.com
${superadminPassword}
${admincmsurl}            https://newcms.${environment}.demogurupoint.com
${admincmsPassword}       gurupointmasterpassword

${chargebeeurl}                 https://app.chargebee.com
${chargebee username}           rajeev@gurupoint.com
${chargebee password}           0Ch@rg3b330

${chrome browser driver}        ../drivers/chromedriver
${gecko browser driver}        ../drivers/geckodriver
${edge browser driver}        ../drivers/msedgedriver

${firefox_browser}                  firefox
${headlessfirefox_browser}          headlessfirefox
${chrome_browser}                   chrome
${headlesschrome_browser}           headlesschrome
${edge_browser}                     edge
${safari_browser}                   safari


*** Keywords ***  
KW: Scrap the proxy ip and the port number from sslproxies.
    QWeb.Open Browser        ${ssl proxy site url}     ${chrome_browser}      -headless
    ${the proxy ip address is}=     QWeb.Get Text        ${proxy ip xpath}
    ${converted to string proxy ip address}=        Convert To String       ${the proxy ip address is}
    ${the proxy port number is}=     QWeb.Get Text        ${port number xpath}
    ${converted to string proxy port number}=        Convert To String       ${the proxy port number is}
    Set Global Variable     ${converted to string proxy ip address}
    Set Global Variable     ${converted to string proxy port number}
    KW: Browser TearDown

KW: Launch Browser Common Keyword
    [Documentation]  This is a section where browsers invoke keywords are mentioned using library QWeb.
    ...     "--marionette" "--allow-running-insecure-content" "--xyz" "-foreground" "-no-remote" "-profile" "-headless" "-private" "--use-fake-ui-for-media-stream" "--use-fake-device-for-media-stream" "--allow-file-access" "--ignore-ssl-errors" "--ignore-certificate-errors-spki-list"  "--disable-dev-shm-usage"  "--no-sandbox"
    ...     prefs="network.proxy.type":"1", "network.proxy.http":"[proxy_ip/url here]", "network.proxy.http_port":"[proxy port here]"
    [Arguments]     ${browser_name}     ${urls}     ${delete excels}    
    Set Global Variable     ${browser_name}
    KW: Scrap the proxy ip and the port number from sslproxies.
    TRY
        Run Keyword if      "${browser_name}" == "headlesschrome"     QWeb.Open Browser        ${urls}      chrome      -headless, --allow-running-insecure-content, --use-fake-ui-for-media-stream, --proxy-server\=${converted to string proxy ip address}:${converted to string proxy port number}
        ...     ELSE IF     "${browser_name}" == "chrome"             QWeb.Open Browser        ${urls}      chrome      --allow-running-insecure-content, --use-fake-ui-for-media-stream    #, --proxy-server\=${converted to string proxy ip address}:${converted to string proxy port number}
        ...     ELSE IF     "${browser_name}" == "headlessfirefox"    QWeb.Open Browser        ${urls}      firefox     -headless   --allow-running-insecure-content, prefs="permissions.default.microphone":"1", "permissions.default.camera":"1", "network.proxy.http":"${converted to string proxy ip address}", "network.proxy.http_port":"${converted to string proxy port number}"  #, "network.proxy.ssl":"5.181.171.145", "network.proxy.ssl_port":"8085"
        ...     ELSE IF     "${browser_name}" == "firefox"            QWeb.Open Browser        ${urls}      firefox     --allow-running-insecure-content    prefs="permissions.default.microphone":"1", "permissions.default.camera":"1", "network.proxy.http":"${converted to string proxy ip address}", "network.proxy.http_port":"${converted to string proxy port number}"  #, "network.proxy.ssl":"5.181.171.145", "network.proxy.ssl_port":"8085"
        ...     ELSE IF     "${browser_name}" == "safari"             QWeb.Open Browser        ${urls}      safari      --allow-running-insecure-content
        ...     ELSE IF     "${browser_name}" == "edge"               QWeb.Open Browser        ${urls}      edge        --allow-running-insecure-content, --use-fake-ui-for-media-stream    #, --proxy-server\=${converted to string proxy ip address}:${converted to string proxy port number}
    EXCEPT      Browser couldn't invoke, sorry for the inconvenience
        Open Browser        ${urls}      safari       --allow-running-insecure-content
    END
    ${browser_name_driver}=        Return Browser
    Set Global Variable     ${browser_name_driver}
    QWeb.Delete All Cookies
    Run Keyword if      "${delete excels}" == "True"      Run Keyword And Continue On Failure         KW: Delete all the people excel sheets in the people folder.
    Run Keyword if      "${delete excels}" == "True"      Run Keyword And Continue On Failure         KW: Delete all the rooms excel sheets in the people folder.
    KW: Maximize the Window.
    
KW: Chrome Return Browser
    ${return_chrome_browser}    Set Variable       ${browser_name_driver}
    Set Global Variable     ${return_chrome_browser}

KW: Firefox Return Browser
    ${return_firefox_browser}   Set Variable       ${browser_name_driver}
    Set Global Variable     ${return_firefox_browser}

KW: Edge Return Browser
    ${return_edge_browser}   Set Variable       ${browser_name_driver}
    Set Global Variable     ${return_edge_browser}

KW: Browser TearDown
    [Documentation]  This section will close the browser after the execution.
    QWeb.Delete All Cookies
    QWeb.Close Browser

KW: Close all browser TearDown
    [Documentation]  This section will close all the browser after the execution.
    QWeb.Delete All Cookies
    QWeb.Close All Browsers

KW: Close current window tab.
    QWeb.Delete All Cookies
    QWeb.Close Window

KW: Close all windows except the current one.
    QWeb.Delete All Cookies
    QWeb.Close Others

KW: Get length
    [Documentation]     Returns and logs the length of the given item as an integer.
    [Arguments]     ${stored value}
    ${lengths} =	Get Length	    ${stored value}
    Set Global Variable         ${lengths}

KW: Evaluate
    [Documentation]     Evaluates the given expression in Python and returns the result.
    [Arguments]     ${starting range}       ${end range}    ${substract this}
    ${evaluates}=   evaluate    random.randint(${starting range},${end range}-${substract this})
    Set Global Variable         ${evaluates}

KW: Get From List
    [Documentation]     Returns the value specified with an index from list.
    [Arguments]     ${list}     ${index}
    ${get from lists}=   Get From List      ${list}     ${index}
    Set Global Variable         ${get from lists}

KW: Convert To String
    [Documentation]     Converts the given item to a Unicode string.
    [Arguments]     ${item}
    ${convert to strings}=      Convert To String       ${item}
    Set Global Variable     ${convert to strings}