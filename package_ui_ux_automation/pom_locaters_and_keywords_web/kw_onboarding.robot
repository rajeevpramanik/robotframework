*** Settings ***
Documentation   This setting is for the signup module settings.
# Library         SeleniumLibrary

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${Lets_start_with_the_basics}                       xpath\=//h5[contains(text(),"Let's start with the basics")]
${Tell_us_about_the_events_you_host}                xpath\=//span[contains(text(),'Tell us about the events you host')]

${select the number closest to your choice xpath}         xpath\=//body/main[@id\='root']/div[2]/section[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[1]
${Select the average number of attendees xpath}           xpath\=//body/main[@id\='root']/div[2]/section[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]
${Pick an option that describes your business xpath}      xpath\=//body/main[@id\='root']/div[2]/section[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[1]
${Pick the host country of your events xpath}             xpath\=//body/main[@id\='root']/div[2]/section[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[6]/div[1]/div[1]/div[1]/div[1]
${start free trial button}                                xpath\=//span[contains(text(),'Start Free Trial')]
${free trial multi grid xpath}                            xpath\=//span[contains(text(),'FREE TRIAL')]


@{select the number closest to your choice value}=      1 - 5       5 - 15      15 - 30     30 - 50     50 - 100        100 +
@{Select the average number of attendees value}=        1 - 500     500 - 1500      1500 - 5000     5000 - 25000        25000 +
@{Pick an option that describes your business value}=       Association     Event Management Company        Corporate       Educational Institution     Media       Healthcare      Government      NGO     Independent Organizer       Other
@{Pick the host country of your events value}=          United States       Australia       Brazil      Greece      Ukraine     Zimbabwe

***Keywords***
KW: Click on the How many events do you host in a year? *
    QWeb.Click Element       ${select the number closest to your choice xpath}

KW: Select value from the How many events do you host in a year? * drop down.
    ${length of select the number closest to your choice value}=    get length  ${select the number closest to your choice value}
    ${random_NUMBER}=   evaluate    random.randint(0,${length of select the number closest to your choice value}-1)
    ${The final value from the list is}=    Get From List       ${select the number closest to your choice value}       ${random_NUMBER}
    QWeb.Click Text      ${The final value from the list is}

KW: Click on the How many attendees visit your events? *
    QWeb.Click Element       ${Select the average number of attendees xpath}

KW: Select value from the How many attendees visit your events? * drop down.
    ${length of select the average number of attendees value}=    get length  ${Select the average number of attendees value}
    ${random_NUMBER}=   evaluate    random.randint(0,${length of select the average number of attendees value}-1)
    ${The final value from the list is}=    Get From List       ${Select the average number of attendees value}       ${random_NUMBER}
    QWeb.Click Text      ${The final value from the list is}

KW: Click on the Select the type of your Organisation? *
    QWeb.Click Element       ${Pick an option that describes your business xpath}

KW: Select value from the Select the type of your Organisation? * drop down.
    ${length of Pick an option that describes your business value}=    get length  ${Pick an option that describes your business value}
    ${random_NUMBER}=   evaluate    random.randint(0,${length of Pick an option that describes your business value}-1)
    ${The final value from the list is}=    Get From List       ${Pick an option that describes your business value}       ${random_NUMBER}
    QWeb.Click Text      ${The final value from the list is}

KW: Click on the Select the Country *
    QWeb.Click Element       ${Pick the host country of your events xpath}

KW: Select value from the Select the Country * drop down.
    ${length of Pick the host country of your events value}=    get length  ${Pick the host country of your events value}
    ${random_NUMBER}=   evaluate    random.randint(0,${length of Pick the host country of your events value}-1)
    ${The final value from the list is}=    Get From List       ${Pick the host country of your events value}       ${random_NUMBER}
    QWeb.Click Text      ${The final value from the list is}

KW: Click on the start free trial button.
    QWeb.Click Element      ${start free trial button}

KW: Verify the free trial grid element and text is enabled and displayed.
    Is Element      ${free trial multi grid xpath}
    Is Text     FREE TRIAL