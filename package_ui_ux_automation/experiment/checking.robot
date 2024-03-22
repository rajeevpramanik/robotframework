*** Settings ***
Documentation   This setting is for Suite Setup, Suite Teardown, Test Setup & Test Teardown.

# Library         SeleniumLibrary
Library         QWeb
# Library         Browser
Library         BuiltIn
Library         Collections
Library         OperatingSystem
# Library         AutoRecorder
# Library         SikuliLibrary       mode=NEW
Library         FakerLibrary        locale=en_US
# Library         ExcellentLibrary
# Library         DebugLibrary
Library         DateTime
Library         String


***Variables***
${super admin cms url}    https://admin.v2qat.demogurupoint.com
${admin cms url}    https://newcms.v2qat.demogurupoint.com

#${Browser_Name}     headlesschrome
${Browser_Name}     chrome
#${Browser_Name}     headlessfirefox
#${Browser_Name}     firefox
#${Browser_Name}     edge
# ${Browser_Name}     safari


***Keywords***
KW: Create custom email address.
    ${the current date is}=     Get Current Date        local       0       timestamp       False
    log to Console      ${the current date is}

KW: Random domain name.
    ${domain}=      FakerLibrary.Domain Name
    log to Console      ${domain}

KW: Fetch From Left
    ${only_special_8}=       FakerLibrary.Password       length=10       special_chars=True      digits=False     upper_case=False     lower_case=False
    ${remove_dollar_char}=              Replace String      ${only_special_8}               $     !
    ${remove_left_carly_char}=          Replace String      ${remove_dollar_char}           {     !
    ${remove_right_carly_char}=         Replace String      ${remove_left_carly_char}       }     !
    ${remove_and_char}=                 Replace String      ${remove_right_carly_char}      &     !
    ${remove_at_the_rate_char}=         Replace String      ${remove_and_char}              @     !
    Set Global Variable         ${remove_at_the_rate_char}

***Test Cases***
TC1
    KW: Create custom email address.

TC2
    KW: Random domain name. 

TC3
    KW: Fetch From Left