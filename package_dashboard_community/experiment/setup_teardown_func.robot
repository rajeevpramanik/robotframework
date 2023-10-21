*** Settings ***
Documentation   This setting is for Suite Setup, Suite Teardown, Test Setup & Test Teardown.

*** Variables ***
# ${super admin dashboard url}    https://admin.v2qat.demopalipoint.com
# ${admin dashboard url}          https://newdashboard.v2qat.demopalipoint.com

# ${super admin dashboard url}    https://admin.v2release.demopalipoint.com
# ${admin dashboard url}    https://newdashboard.v2release.demopalipoint.com
# ${ssl proxy site url}       https://sslproxies.org

${v2qat}      v2qat
${v2rel environment var}      v2rel
${v2swat environment var}      v2swat

# ${v2qat super admin dashboard url}      https://admin.v2qat.demopalipoint.com
# ${v2qat admin dashboard url}            https://newdashboard.v2qat.demopalipoint.com

# ${v2rel super admin dashboard url}      https://admin.v2release.demopalipoint.com
# ${v2rel admin dashboard url}            https://newdashboard.v2release.demopalipoint.com

# ${v2swat super admin dashboard url}     https://admin.v2swat.demopalipoint.com
# ${v2swat admin dashboard url}           https://newdashboard.v2swat.demopalipoint.com

${v2qat super admin dashboard url}      %{v2qat_superadmin_url}
${v2qat admin dashboard url}            %{v2qat_dashboard_url}

${v2rel super admin dashboard url}      %{v2rel_superadmin_url}
${v2rel admin dashboard url}            %{v2rel_dashboard_url}

${v2swat super admin dashboard url}     %{v2swat_superadmin_url}
${v2swat admin dashboard url}           %{v2swat_dashboard_url}

#########################################################################################
${Browser_Name}     firefox

#########################################################################################
${Community_Browser}     chrome

#########################################################################################
${Community_Browser2}     edge

*** Keywords ***
KW: Assign v2qat url.
    Set Global Variable     ${v2qat super admin dashboard url}
    Set Global Variable     ${v2qat admin dashboard url}
    # ${super admin dashboard url}=       ${v2qat super admin dashboard url}
    # Log to console      ${super admin dashboard url}
    # ${admin dashboard url}=     ${v2qat admin dashboard url}
    # Log to console      ${admin dashboard url}

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
    
    Run Keyword if      "${Browser_Name}" == "headlesschrome"     QWeb.Open Browser        ${admin dashboard url}     chrome        -headless, --allow-running-insecure-content, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${Browser_Name}" == "chrome"             QWeb.Open Browser        ${admin dashboard url}      chrome       --allow-running-insecure-, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${Browser_Name}" == "headlessfirefox"    QWeb.Open Browser        ${admin dashboard url}      firefox       -headless   --allow-running-insecure-content, prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"

    ...     ELSE IF     "${Browser_Name}" == "firefox"            QWeb.Open Browser        ${admin dashboard url}      firefox      --allow-running-insecure-content    prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"
    
    ...     ELSE IF     "${Browser_Name}" == "safari"            QWeb.Open Browser        ${admin dashboard url}      safari       --allow-running-insecure-content

    ...     ELSE        QWeb.Open Browser        ${admin dashboard url}      ${Browser_Name}     --allow-running-insecure-content

    ${Browser_Name_driver}=        Return Browser
    Set Global Variable     ${Browser_Name_driver}

    KW: Delete all the people excel sheets in the people folder.
    KW: Delete all the rooms excel sheets in the people folder.

KW: Browser Invokes for community
    [Documentation]  This is a section where browsers invoke keywords are mentioned using library QWeb.
    Run Keyword if      "${Community_Browser}" == "headlesschrome"     QWeb.Open Browser        ${event community url}     chrome        -headless, --allow-running-insecure-content, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${Community_Browser}" == "chrome"             QWeb.Open Browser        ${event community url}      chrome       --allow-running-insecure-, --use-fake-ui-for-media-stream

    ...     ELSE IF     "${Community_Browser}" == "headlessfirefox"    QWeb.Open Browser        ${event community url}      firefox       -headless   --allow-running-insecure-content, prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"

    ...     ELSE IF     "${Community_Browser}" == "firefox"            QWeb.Open Browser        ${event community url}      firefox       --allow-running-insecure-content    prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"

    ...     ELSE IF     "${Community_Browser}" == "safari"            QWeb.Open Browser        ${event community url}      safari

    ...     ELSE        QWeb.Open Browser        ${event community url}      ${Community_Browser}     --allow-running-insecure-content

    ${Community_Browser_driver}=        Return Browser
    Set Global Variable     ${Community_Browser_driver}


***Test Cases***
TC: Checking the validation.
    # KW: Assign v2qat url.
    Set Global Variable     ${v2qat}
