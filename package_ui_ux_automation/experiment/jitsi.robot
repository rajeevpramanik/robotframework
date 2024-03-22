***Settings***
Library     QWeb
Library     BuiltIn
Library         OperatingSystem


***Variables***
${proxy ip xpath}           xpath\=(//*[starts-with(@class,'')]//tbody//tr//td)[1]
${port number xpath}        xpath\=(//*[starts-with(@class,'')]//tbody//tr//td)[2]


***Keywords***
KW: Scrap the proxy ip and the port number from sslproxies.
    QWeb.Open Browser        https://sslproxies.org      firefox     -headless
    ${the proxy ip address is}     Get Text        ${proxy ip xpath}
    ${the proxy port number is}     Get Text        ${port number xpath}
    ${ip address after converting is}=       Convert To String      ${the proxy ip address is}
    Set Global Variable     ${ip address after converting is}
    Set Global Variable     ${the proxy port number is}
    QWeb.Close Browser

***Test Cases***
TC1 open chrome
    Empty Directory    /Users/rajeev/Documents/gurupoint_projects/gurupoint_automation/package_cms_webcommunity/experiment/screenshots/
    Open Browser        https://meet.jit.si/QWebtesting123      chrome    --allow-running-insecure-content, --use-fake-ui-for-media-stream
    # Open Browser        https://meet.jit.si/QWebtesting123      firefox     -headless   --allow-running-insecure-content, prefs="permissions.default.microphone":"1", "permissions.default.camera":"1"
    Maximize Window
    # QWeb.Close Browser
    ${open chrome title}=   GetTitle

TC2 open firefox
    # KW: Scrap the proxy ip and the port number from sslproxies.
    Open Browser        https://meet.jit.si/QWebtesting123      firefox     --allow-running-insecure-content    prefs="permissions.default.microphone":"1", "permissions.default.camera":"1" 
    # "network.proxy.type":"1", "network.proxy.http":"[${ip address after converting is}]", "network.proxy.http_port":${the proxy port number is}
    # OpenBrowser   http://www.whatismyproxy.com/  firefox  prefs="network.proxy.type":"1", "network.proxy.http":"[proxy_ip/url here]", "network.proxy.http_port":"[proxy port here]"
    
    Maximize Window
    # QWeb.Close Browser

    ${open firefox title}=   GetTitle

    ${firefox_driver}=        Return Browser
    Set Global Variable     ${firefox_driver}
    Evaluate       "${firefox_driver.minimize_window()}"

KW: Switch to browsers.     ${tab2}
    QWeb.Switch Browser      2
    ${Chrome title}=   GetTitle

KW: Switch to browsers.     ${tab1}
    QWeb.Switch Browser      1
    BuiltIn.Sleep   5 seconds
    ${Firefox title}=   GetTitle

    Evaluate       "${firefox_driver.maximize_window()}"

KW: Switch to browsers.     ${tabnew}
    # QWeb.Switch Browser      NEW
    BuiltIn.Sleep   5 seconds

    QWeb.Close All Browsers