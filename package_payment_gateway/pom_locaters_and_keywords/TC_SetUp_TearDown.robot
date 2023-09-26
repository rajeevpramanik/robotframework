*** Settings ***
Documentation   This setting is for Suite Setup, Suite Teardown, Test Setup & Test Teardown.
Library         SeleniumLibrary
Library         OperatingSystem

#Resource        ../Resources/KW_SetUp_TearDown.robot

#Suite Setup     Log to console      This is SUITE SETUP Level.
#Suite Teardown  Log to console      This is SUITE TEARDOWN Level.
#Test Setup      log to console     Get to the Website
#Test Teardown   log to console     Exit the Website


*** Variables ***
# ${driver_name}            ../packageblazemeter/Drivers/chromedriver.exe
${SiteURL}           http://demo.guru99.com
#${Browser_Name}     headlesschrome
${Browser_Name}     chrome
#${Browser_Name}     headlessfirefox
#${Browser_Name}     Firefox


*** Keywords ***
GetEnvironmentVariablesTest
    [Tags]    system
    ${ComputerName}=        Get Environment Variable    COMPUTERNAME
    ${OperatingSystem}=     Get Environment Variable    OS
    ${TestUserName}=        Get Environment Variable    USERNAME
    ${SystemDir}=           Get Environment Variable    WINDIR
    ${ProcessorLevel}=      Get Environment Variable    PROCESSOR_LEVEL
    Log    ${ComputerName}
    Log    ${OperatingSystem}
    Log    ${TestUserName}
    Log    ${SystemDir}
    Log    ${ProcessorLevel}

KW_1: Browser Invokes SetUp
    [Documentation]  This is a section where browsers invoke keywords are mentioned.
    Run Keyword if      "${Browser_Name}" == "headlesschrome"     Open Browser        ${SiteURL}      ${Browser_Name}
    ...     ELSE IF     "${Browser_Name}" == "chrome"             Open Browser        ${SiteURL}      ${Browser_Name}
    ...     ELSE IF     "${Browser_Name}" == "headlessfirefox"    Open Browser        ${SiteURL}      ${Browser_Name}
    ...     ELSE        Open Browser        ${SiteURL}      ${Browser_Name}

KW_2: Browsers is Maximized
    [Documentation]  This KW is for maximizing the browser.
    Maximize Browser Window

KW_3: Sleep Mode
    [Documentation]  This section is for the time to wait.
    Sleep   2 seconds

KW_3_0: Set Browser Implicit Wait
    [Documentation]  This section is for the Selenium Implicit Wait.
    Set Browser Implicit Wait      2 seconds

KW_3_1: Set Selenium Speed
#    [Documentation] This section is for Set Selenium Speed for each command execution.
    Set Selenium Speed  1 seconds

KW_3_2: Get Selenium Implicit Wait
    [Documentation] This section is to get the selenium implicit wait.
    ${Get_Selenium_Implicit_Wait_Speed} = Get Selenium Implicit Wait
    log     ${Get_Selenium_Implicit_Wait_Speed}    html=true

KW_3_3: Set Selenium Timeout
    [Documentation] This section is to set the selenium timeout.
    ${Set_Selenium_Timeout}=    Set Selenium Timeout    10 seconds
    log     ${Set_Selenium_Timeout}

KW_3_4: Get Selenium Timeout
    [Documentation] This section is to get the selenium timeout.
    ${Get_Selenium_time_delay} = Get Selenium Timeout
    log     ${Get_Selenium_time_delay}    html=true

KW_4: Browser TearDown
    [Documentation]  This section will close the browser after the execution.
    Close Browser

KW: To scroll to the bottom of the page.
    [Documentation]  This section will scroll to the bottom of the page.
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)    # Scroll to the bottom of the page.

KW: To scroll to the top of the page.
    [Documentation]  This section will scroll to the top of the page.
    Execute JavaScript    window.scrollTo(0, -document.body.scrollHeight)    # Scroll to the top of the page.
