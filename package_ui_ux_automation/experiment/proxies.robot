***Settings***
Library     QWeb

***Variables***
${proxy ip xpath}           xpath\=(//*[starts-with(@class,'')]//tbody//tr//td)[1]
${port number xpath}        xpath\=(//*[starts-with(@class,'')]//tbody//tr//td)[2]

# ***Keywords***


***Test Cases***
TC1 open chrome

    Open Browser        https://sslproxies.org      firefox     -headless

    ${the proxy ip address is}=     Get Text        ${proxy ip xpath}
    ${the proxy port number is}=     Get Text        ${port number xpath}


KW: Switch to browsers.     ${tabnew}
    # QWeb.Switch Browser      NEW
    BuiltIn.Sleep   5 seconds

    QWeb.Close All Browsers