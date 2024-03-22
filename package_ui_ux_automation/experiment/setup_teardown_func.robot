*** Settings ***
Documentation   This setting is for Suite Setup, Suite Teardown, Test Setup & Test Teardown.

*** Variables ***
# ${super admin cms url}    https://admin.v2qat.demogurupoint.com
# ${admin cms url}          https://newcms.v2qat.demogurupoint.com

# ${super admin cms url}    https://admin.v2release.demogurupoint.com
# ${admin cms url}    https://newcms.v2release.demogurupoint.com
# ${ssl proxy site url}       https://sslproxies.org

${v2qat}      v2qat
${v2rel environment var}      v2rel
${v2swat environment var}      v2swat

# ${v2qat super admin cms url}      https://admin.v2qat.demogurupoint.com
# ${v2qat admin cms url}            https://newcms.v2qat.demogurupoint.com

# ${v2rel super admin cms url}      https://admin.v2release.demogurupoint.com
# ${v2rel admin cms url}            https://newcms.v2release.demogurupoint.com

# ${v2swat super admin cms url}     https://admin.v2swat.demogurupoint.com
# ${v2swat admin cms url}           https://newcms.v2swat.demogurupoint.com

${v2qat super admin cms url}      %{v2qat_superadmin_url}
${v2qat admin cms url}            %{v2qat_cms_url}

${v2rel super admin cms url}      %{v2rel_superadmin_url}
${v2rel admin cms url}            %{v2rel_cms_url}

${v2swat super admin cms url}     %{v2swat_superadmin_url}
${v2swat admin cms url}           %{v2swat_cms_url}

#########################################################################################
${Browser_Name}     firefox

#########################################################################################
${webcommunity_Browser}     chrome

#########################################################################################
${webcommunity_Browser2}     edge

*** Keywords ***
KW: Assign v2qat url.
    Set Global Variable     ${v2qat super admin cms url}
    Set Global Variable     ${v2qat admin cms url}
    # ${super admin cms url}=       ${v2qat super admin cms url}
    # Log to console      ${super admin cms url}
    # ${admin cms url}=     ${v2qat admin cms url}
    # Log to console      ${admin cms url}

KW: For environment specific.
    Set Global Variable     ${v2qat environment var}
    Set Global Variable     ${v2rel environment var}
    Set Global Variable     ${v2swat environment var}

    Run Keyword if      "${v2qat environment var}" == "v2qat"       


KW: Browser Invokes SetUp
    [Documentation]  This is a section where browsers invoke keywords are mentioned using library QWeb.
    ...     "--marionette" "--allow-running-insecure-content" "--xyz" "-foreground" "-no-remote" "-profile" "-headless" "-private" "--use-fake-ui-for-media-stream" "--use-fake-device-for-media-stream" "--allow-file-access" "--ignore-ssl-errors" "--ignore-certificate-errors-spki-list"  "--disable-dev-shm-usage"  "--no-sandbox"
    ...     prefs="network.proxy.type":"1", "network.proxy.http":"[proxy_ip/url here]", "network.proxy.http_port":"[proxy port here]"
    
    Set Global Variable     ${Browser_Name}
    
    Run Keyword if      "${Browser_Name}" == "headlesschrome"     QWeb.Open Browser        ${admin cms url}     chrome        -headless, --allow-running-insecure-content, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${Browser_Name}" == "chrome"             QWeb.Open Browser        ${admin cms url}      chrome       --allow-running-insecure-, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${Browser_Name}" == "headlessfirefox"    QWeb.Open Browser        ${admin cms url}      firefox       -headless   --allow-running-insecure-content, prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"

    ...     ELSE IF     "${Browser_Name}" == "firefox"            QWeb.Open Browser        ${admin cms url}      firefox      --allow-running-insecure-content    prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"
    
    ...     ELSE IF     "${Browser_Name}" == "safari"            QWeb.Open Browser        ${admin cms url}      safari       --allow-running-insecure-content

    ...     ELSE        QWeb.Open Browser        ${admin cms url}      ${Browser_Name}     --allow-running-insecure-content

    ${Browser_Name_driver}=        Return Browser
    Set Global Variable     ${Browser_Name_driver}

    KW: Delete all the people excel sheets in the people folder.
    KW: Delete all the rooms excel sheets in the people folder.

KW: Browser Invokes for webcommunity
    [Documentation]  This is a section where browsers invoke keywords are mentioned using library QWeb.
    Run Keyword if      "${webcommunity_Browser}" == "headlesschrome"     QWeb.Open Browser        ${event webcommunity url}     chrome        -headless, --allow-running-insecure-content, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${webcommunity_Browser}" == "chrome"             QWeb.Open Browser        ${event webcommunity url}      chrome       --allow-running-insecure-, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${webcommunity_Browser}" == "headlessfirefox"    QWeb.Open Browser        ${event webcommunity url}      firefox       -headless   --allow-running-insecure-content, prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"

    ...     ELSE IF     "${webcommunity_Browser}" == "firefox"            QWeb.Open Browser        ${event webcommunity url}      firefox       --allow-running-insecure-content    prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"

    ...     ELSE IF     "${webcommunity_Browser}" == "safari"            QWeb.Open Browser        ${event webcommunity url}      safari

    ...     ELSE        QWeb.Open Browser        ${event webcommunity url}      ${webcommunity_Browser}     --allow-running-insecure-content

    ${webcommunity_Browser_driver}=        Return Browser
    Set Global Variable     ${webcommunity_Browser_driver}


***Test Cases***
TC: Checking the validation.
    # KW: Assign v2qat url.
    Set Global Variable     ${v2qat}
