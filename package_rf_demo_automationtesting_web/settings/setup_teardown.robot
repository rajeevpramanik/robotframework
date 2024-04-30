*** Settings ***

Documentation   This setting is for Suite Setup, Suite Teardown, Test Setup & Test Teardown.

# Library         SeleniumLibrary
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
Library         AppiumLibrary

Resource            ../settings/user_agents.robot


*** Variables ***
${environment}
${ws host url}
${api host url}

${ssl proxy site url}       https://sslproxies.org
${proxy ip xpath}           xpath\=(//*[starts-with(@class,'')]//tbody//tr//td)[1]
${port number xpath}        xpath\=(//*[starts-with(@class,'')]//tbody//tr//td)[2]

${environment}              
${superadmincmsurl}       https://admin.${environment}.demogurupoint.com
${superadminPassword}
${admincmsurl}            https://newcms.${environment}.demogurupoint.com
${admincmsPassword}       gurupoint123456

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
${browser_name_driver}


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

KW: UAT host url's
    [Documentation]            UAT environment host urls.
    ${ws host url}=            Set Variable            wss://ws.postman-echo.com
    ${api host url}=           Set Variable            https://postman-echo.com
    set global variable        ${ws host url}
    set global variable        ${api host url}
    
KW: STAGING host url's
    [Documentation]            Staging environment host urls.
    ${ws host url}=            Set Variable            ws://ws.postman-echo.com
    ${api host url}=           Set Variable            http://postman-echo.com
    set global variable        ${ws host url}
    set global variable        ${api host url}
    
KW: Environment Specific
    [Documentation]        Condition where all host are stored in one place based on the env it will get executed.
    [Arguments]            ${environment}
    TRY
        IF    "${environment}" == "uat"
        Run Keyword        KW: UAT host url's
        ELSE IF    "${environment}" == "staging"
        Run Keyword        KW: STAGING host url's
        END
    EXCEPT
        LOG   Exception! the current environment "${environment}" is not functionable.
    FINALLY
        LOG   Finally! the current environment "${environment}" is functionable.
    END
    
    