*** Settings ***
Documentation       This setting is for module to link and use it for inheritence purpose.
Library             RequestsLibrary
Library             Collections
Library             FakerLibrary
Library             ExcellentLibrary
Library             JSONLibrary
Library             BuiltIn
Library             DateTime
Library             BrowserMobProxyLibrary
Library             WebSocketClient
Library             ListenerLibrary
Resource            ../settings/user_agents.robot
Resource            ../variables/ckv_variables.robot
Resource            ../keywords/ckv_functions.robot


*** Variables ***
${environment}
${ws host url}
${api host url}


*** Keywords ***
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
    
    