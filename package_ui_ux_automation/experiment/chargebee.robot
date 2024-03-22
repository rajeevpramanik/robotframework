*** Settings ***
Documentation   This setting is for Suite Setup, Suite Teardown, Test Setup & Test Teardown.
Library         QWeb
Library         BuiltIn
Library         Collections
Library         OperatingSystem
Library         AutoRecorder
Library         SikuliLibrary       mode=NEW
Library         FakerLibrary        locale=en_US
Library         ExcellentLibrary
Library         DebugLibrary
Library         ScreenCapLibrary
Library         String
Library         Dialogs

*** Variables ***
# ${super admin cms url}    https://admin.v2qat.demogurupoint.com
# ${admin cms url}          https://newcms.v2qat.demogurupoint.com

# ${super admin cms url}    https://admin.v2release.demogurupoint.com
# ${admin cms url}    https://newcms.v2release.demogurupoint.com
${ssl proxy site url}       https://sslproxies.org

${v2qat}      v2qat
${v2rel environment var}      v2rel
${v2swat environment var}      v2swat

#########################################################################################
${Browser_Name}    chrome    #firefox

#########################################################################################
${webcommunity_Browser}     chrome

#########################################################################################
${webcommunity_Browser2}     edge

${chargebeeurl}                https://app.chargebee.com
${chargebee username}           rajeev@gurupoint.com
${chargebee password}           0Ch@rg3b330

${proxy ip xpath}           xpath\=(//*[starts-with(@class,'')]//tbody//tr//td)[1]
${port number xpath}        xpath\=(//*[starts-with(@class,'')]//tbody//tr//td)[2]

*** Keywords ***
KW: Scrap the proxy ip and the port number from sslproxies.
    QWeb.Open Browser        ${ssl proxy site url}     ${Browser_Name}      -headless

    ${the proxy ip address is}=     QWeb.Get Text        ${proxy ip xpath}
    ${converted to string proxy ip address}=        Convert To String       ${the proxy ip address is}

    ${the proxy port number is}=     QWeb.Get Text        ${port number xpath}
    ${converted to string proxy port number}=        Convert To String       ${the proxy port number is}

    Set Global Variable     ${converted to string proxy ip address}
    Set Global Variable     ${converted to string proxy port number}

KW: Browser Invokes Chargebee
    [Documentation]  This is a section where browsers invoke keywords are mentioned using library QWeb.
    ...     "--marionette" "--allow-running-insecure-content" "--xyz" "-foreground" "-no-remote" "-profile" "-headless" "-private" "--use-fake-ui-for-media-stream" "--use-fake-device-for-media-stream" "--allow-file-access" "--ignore-ssl-errors" "--ignore-certificate-errors-spki-list"  "--disable-dev-shm-usage"  "--no-sandbox"
    ...     prefs="network.proxy.type":"1", "network.proxy.http":"[proxy_ip/url here]", "network.proxy.http_port":"[proxy port here]"
    
    Set Global Variable     ${Browser_Name}
    
    Run Keyword if      "${Browser_Name}" == "headlesschrome"     QWeb.Open Browser        ${chargebeeurl}     chrome        -headless, --allow-running-insecure-content, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${Browser_Name}" == "chrome"             QWeb.Open Browser        ${chargebeeurl}      chrome       --allow-running-insecure-, --use-fake-ui-for-media-stream, --proxy-server\=${converted to string proxy ip address}:${converted to string proxy port number}

    ...     ELSE IF     "${Browser_Name}" == "headlessfirefox"    QWeb.Open Browser        ${chargebeeurl}      firefox       -headless   --allow-running-insecure-content, prefs="permissions.default.microphone":"1", "permissions.default.camera":"1", "network.proxy.type":"1", "network.proxy.http":"5.181.171.145", "network.proxy.http_port":"8085", "network.proxy.ssl":"5.181.171.145", "network.proxy.ssl_port":"8085"

    ...     ELSE IF     "${Browser_Name}" == "firefox"            QWeb.Open Browser        ${chargebeeurl}      firefox      --allow-running-insecure-content    prefs="permissions.default.microphone":"1", "permissions.default.camera":"1", "network.proxy.type":"1", "network.proxy.http":"${converted to string proxy ip address}", "network.proxy.http_port":"${converted to string proxy port number}"  #, "network.proxy.ssl":"5.181.171.145", "network.proxy.ssl_port":"8085"
    
    ...     ELSE IF     "${Browser_Name}" == "safari"            QWeb.Open Browser        ${chargebeeurl}      safari       --allow-running-insecure-content

    ...     ELSE        QWeb.Open Browser        ${chargebeeurl}      ${Browser_Name}     --allow-running-insecure-content

    ${ChargeBeeBrowser_Name_driver}=        Return Browser
    Set Global Variable     ${ChargeBeeBrowser_Name_driver}

KW: Close all browser TearDown
    [Documentation]  This section will close all the browser after the execution.
    QWeb.Delete All Cookies
    QWeb.Close All Browsers

***Test Cases***
TC for fetching proxy
    KW: Scrap the proxy ip and the port number from sslproxies.
    KW: Close all browser TearDown

TC Open browser and redirect to charge.
    KW: Browser Invokes Chargebee
    KW: Close all browser TearDown
