*** Settings ***
Documentation   This setting is for the signup module settings.

Resource        ../setup_teardown/setup_teardown_func.robot

***Variables***
${top multi grid item events element xpath}                                        xpath\=(//*[name()\='rect'][@fill\='white'])[1]          #//span[normalize-space()\='EVENTS']
${event name field xpath}                                                          xpath\=//input[@placeholder\='Example: Fireside chat with Panellist Name on AI']
${description field xpath}                                                         xpath\=/html//body[@id\='tinymce']
${timezone dropdown xpath}                                                         xpath\=//span[contains(text(),'Select Time Zone')]
${timezone search field xpath}                                                     xpath\=//input[@placeholder\='Search here...']
${event start date and time calender xpath}                                        xpath\=(//div[@class\='flatpickr-rContainer'])[1]
${event end date and time calender xpath}                                          xpath\=(//div[@class\='flatpickr-days'])[2]
${event start date and time xpath}                                                 xpath\=(//input[contains(@placeholder,'Select Date and Time')])[1]
${event start time hr xpath}                                                       xpath\=(//input[contains(@aria-label,'Hour')])[1]
${event end time hr xpath}                                                         xpath\=(//input[@aria-label\='Hour'])[2]
${event start time min xpath}                                                      xpath\=(//input[contains(@aria-label,'Minute')])[1]
${event end time min xpath}                                                        xpath\=(//input[@aria-label\='Minute'])[2]
${event end date and tine xpath}                                                   xpath\=(//input[contains(@placeholder,'Select Date and Time')])[2]
${event 3 days alert with upgrade hyperlink xpath}                                 xpath\=//body/div[@role='presentation']/div/aside/div/div/div/div/p[1]
${social links website xpath}                                                      xpath\=//input[@name='website_url']
${social links linkedin xpath}                                                     xpath\=//input[@name='linked_url']
${social links twitter xpath}                                                      xpath\=//input[@name='twitter_url']
${social links facebook xpath}                                                     xpath\=//input[@name='fb_url']
${social links instagram xpath}                                                    xpath\=//input[@name='instagram_url']
${create event save button xpath}                                                  xpath\=//div[@role='presentation']//div//aside//div//footer//div//div//div//button[@type='button']
${create event cancel button xpath}                                                xpath\=//body/div[@role='presentation']/div/aside/div/footer/div/div/button[1]
${gurupoint logo left side hamburger xpath}                                           xpath\=//*[name()\='rect' and contains(@fill,'white')]
${success alert for event creation xpath}                                          xpath\=//body/main[@id\='root']/div/div/div/div[contains(@direction,'up')]/div[1]
${success green alert xpath}                                                       xpath\=//body/main[@id\='root']/div/div/div/div[contains(@direction,'up')]/div[1]
${event url on the overview module xpath}                                          xpath\=//*[@id\="root"]/div[2]/section/section/div[1]/div[1]/div[1]/div/div/div/div[1]/div[2]/div
${am and pm xpath}                                                                 xpath\=//div[@class\='flatpickr-calendar hasTime animate static arrowBottom arrowLeft open']//span[@title\='Click to toggle'][normalize-space()\='AM']
${event type internal xpath}                                                       xpath\=//span[normalize-space()\='Internal']//input[@name\='eventTypeId']
${event type external xpath}                                                       xpath\=//span[normalize-space()\='External']//input[@name\='eventTypeId']
${end date am pm drop down xpath}                                                  xpath\=(//span[@title\='Click to toggle'])[2]
@{timezone lists}=                      (UTC +05:30) Asia/Kolkata (IST) (India)     #(UTC -08:00) America/Anchorage (AKDT) (United States of America)    (UTC +01:00) Europe/London (BST) (United Kingdom)
@{internal events type}=                Corporate All-Hands     Employee Onboarding     Employee Training       Hackathon       Leadership Meeting      Office Party
@{external events type}=                Conferences     Customer Advisory Board     Exhibitions     External Job Fair       Lead Generation Activities      Marketing Event
@{event type random list}=              Internal        External
${create new event text}                CREATE NEW EVENT
${new event text}                       New Event
${texts below no upcoming events}       Host a successful virtual event, and connect with your attendees globally in just a few steps, All you need to get started is here, Learn More
${time zone text}                       time zone
${event start date text}                Event Start Date
${event end date text}                  Event End Date
${Create text}                          CREATE
${Cancel text}                          Cancel
${CANCEL capital text}                  CANCEL
${Tell us a bit text}                   Tell us a bit about your event
${week days text}                       Sun, Mon, Tue, Wed, Thu, Fri, Sat
${week days Sun text}                   Sun
${week days Mon text}                   Mon
${week days Tue text}                   Tue
${week days Wed text}                   Wed
${week days Thu text}                   Thu
${week days Fri text}                   Fri
${week days Sat text}                   Sat
${semi colon text}                      :
${Closest direction}                    Closest
${span tag}                             span
${div tag}                              div
${flatpickr-months between}             flatpickr-months
${flatpickr-time between}               flatpickr-time
${social engagement links text}         Social Engagement Links
${AM text}                              AM
${PM text}                              PM
${linkedin url}                         https://www.linkedin.com
${twitter url}                          https://twitter.com
${facebook url}                         https://www.facebook.com
${instagram url}                        https://www.instagram.com
${alert success new event created}      Success! New Event Created
${alert success}                        Success
${Event has been published alert}       Event has been published successfully
${create event text}                    Create Event
${go live text}                         GO LIVE
${this event is not live yet text}      This event is not live yet.
${radios in external event}             Conferences, Customer Advisory Board, Exhibitions, External Job Fair, Lead Generation Activities, Marketing Event, Product Launch, Roadshow, User Group Meetings, Other
${radios in internal event}             Corporate All-Hands, Employee Onboarding, Employee Training, Hackathon, Leadership Meeting, Office Party, Sales Kickoff, Team Building, Virtual Town Hall, Workshop, Other
${go live with event text}              Go live with Event
${go live with event anchor}            The event would be published and accessible to the People. Are you sure you want to continue?
${unpublish text}                       UNPUBLISH
${go to event text}                     GO TO EVENT
${unpublish permission alert}           You are about to Unpublish Event
${unpublish your current event text}    This will unpublish your current event
${event unpublished alert}              Event has been unpublished successfully
${Copy current url anchor}              Your event is

${calender right arrow xpath}           xpath\=//body/div[@role\='presentation']/div/aside/div/div/div/div[6]/div[1]/div[1]/div[1]/div[2]/div[1]/span[2]


***Keywords***
KW: Expect texts on the events page.
    Run Keyword If      '${is text visible}'=='True'      Run Keyword     KW: Verify All    ${texts below no upcoming events}   ${waiting duration}

KW: Click on the button New Event.
    Run Keyword If      '${is text visible}'=='True'      Run Keyword     KW: Click Text    ${create new event text}    ${EMPTY}    ${waiting duration}     ${flag false}    ${flag true}    ${flag true}    #${flag true}
    ...        ELSE     Run Keyword         KW: Click Text    ${new event text}    ${EMPTY}    ${waiting duration}     ${flag false}    ${flag true}    ${flag true}     #${flag true}

KW: Enter event name.
    KW: Faker create event name.
    KW: Type Text       ${event name field xpath}       ${eventname}    ${EMPTY}    ${waiting duration}    ${index}     ${flag true}    ${flag true}

KW: Enter event description.
    KW: Faker create event description.
    KW: Type Text       ${description field xpath}      ${event description}       ${Tell us a bit text}    ${waiting duration}    ${index}     ${flag true}    ${flag true}

KW: Search for the timezone from the list.
    KW: Get length      ${timezone lists}
    ${length of timezone lists}   set variable        ${lengths}

    KW: Evaluate        0       ${length of timezone lists}       1
    ${random_NUMBER}      set variable        ${evaluates}

    KW: Get From List       ${timezone lists}       ${random_NUMBER}
    ${The final value from the list is}      set variable        ${get from lists}
    Set Global Variable         ${The final value from the list is}

    KW: Type Text   ${timezone search field xpath}      ${The final value from the list is}       ${time zone text}    ${waiting duration}    ${index}     ${flag true}    ${flag true} 

KW: Select the event start date from the date picker towards top.
    Wait Until Keyword Succeeds         ${wait till}       ${execute for}       KW: Verify Element      ${event start date and time calender xpath}     ${waiting duration}     ${flag true}    ${flag true}    ${flag true}
    Wait Until Keyword Succeeds         ${wait till}       ${execute for}       KW: Verify All      ${week days text}        ${waiting secs}
    KW: Click Text      ${converted currentday is}         ${week days Wed text}      ${waiting secs}     ${flag false}    ${flag true}   ${flag false}

KW: Select the event start date from the date picker towards buttom.
    Wait Until Keyword Succeeds         ${wait till}       ${execute for}       KW: Verify Element      ${event start date and time calender xpath}     ${waiting duration}     ${flag true}    ${flag true}    ${flag true}
    Wait Until Keyword Succeeds         ${wait till}       ${execute for}       KW: Verify All      ${week days text}        ${waiting secs}
    KW: Click Text      ${converted currentday is}      ${semi colon text}      ${waiting secs}     ${flag false}    ${flag true}   ${flag false}

KW: Select the event end date from the date picker towards top.
    KW: Manipulate current time
    KW: Set Config Multiple Anchors True or False       ${flag true}
    KW: Set Config Search Direction     ${Closest direction}
    KW: Set Config Visibility   ${flag true}
    Wait Until Keyword Succeeds         ${wait till}       ${execute for}       KW: Verify Element      ${event end date and time calender xpath}     ${waiting duration}     ${flag true}    ${flag true}  ${flag true}
    Wait Until Keyword Succeeds         ${wait till}       ${execute for}       KW: Verify All      ${week days text}        ${waiting secs}
    # QWeb.Click Text     ${converted future date is}     anchor=Sun      anchor=Mon      anchor=Tue      anchor=Wed      anchor=Thu      anchor=Fri      anchor=Sat     timeout=5s      js=true       partial_match=False     closest_match=True
    Wait Until Keyword Succeeds         ${wait till}       ${execute for}       KW: Click Text      ${converted future date is}      ${week days Wed text}      ${waiting secs}     ${flag false}    ${flag false}   ${flag true}

KW: Select the event end date from the date picker towards button.
    KW: Manipulate current time
    KW: Set Config Multiple Anchors True or False       ${flag true}
    KW: Set Config Search Direction     ${Closest direction}
    KW: Set Config Visibility   ${flag true}
    Wait Until Keyword Succeeds         ${wait till}       ${execute for}       KW: Verify Element      ${event end date and time calender xpath}     ${waiting duration}     ${flag true}    ${flag true}  ${flag true}
    Wait Until Keyword Succeeds         ${wait till}       ${execute for}       KW: Verify All          ${week days text}        ${waiting secs}
    # QWeb.Click Text     ${converted future date is}     anchor=:     anchor=${the am pm of the end date picker is}       js=true       partial_match=False    closest_match=True
    Wait Until Keyword Succeeds         ${wait till}       ${execute for}       KW: Click Text      ${converted future date is}      ${semi colon text}      ${waiting secs}     ${flag false}    ${flag false}   ${flag true}

KW: Check visibility and click.
    KW: Verify Element      ${calender right arrow xpath}     ${waiting secs}     ${flag false}    ${flag false}    ${flag true}
    KW: Click Element       ${calender right arrow xpath}   ${waiting secs}     ${flag true}    ${index}    ${flag false}    ${flag false}    ${flag true}

KW: Select the event end date from the next month date picker towards top.
    KW: Manipulate current time
    KW: Set Config Multiple Anchors True or False       ${flag true}
    KW: Set Config Search Direction     ${Closest direction}
    KW: Set Config Visibility   ${flag true}
    KW: Check visibility and click.
    KW: Sleep Mode                      ${sleep seconds}
    KW: Verify Element      ${event end date and time calender xpath}     ${waiting duration}     ${flag true}    ${flag true}  ${flag true}
    KW: Verify All      ${week days text}        ${waiting secs}
    KW: Click Text      ${converted future date is}      ${week days Wed text}      ${waiting secs}     ${flag false}    ${flag false}   ${flag false}

KW: Pick event start date.
    KW: Manipulate current time
    KW: Convert To String       ${currentday}
    ${converted currentday is}      set variable    ${convert to strings}
    Set Global Variable     ${converted currentday is}
    Run Keyword If      ${currentday}>=15       Run Keyword         KW: Select the event start date from the date picker towards buttom.
    Run Keyword If      ${currentday}<=16       Run Keyword         KW: Select the event start date from the date picker towards top.

KW: Set event start time & start min.
    KW: Manipulate current time
    KW: Convert To String       ${future_updated_hr}
    ${converted currenthour is}     set variable    ${convert to strings}
    Set Global Variable     ${converted currenthour is}
    KW: Type Text   ${event start time hr xpath}    ${future_updated_hr}    ${semi colon text}      ${waiting duration}     ${index}     ${flag false}    ${flag true}

    KW: Convert To String       ${future_updated_mins}
    ${converted currentmin is}      set variable    ${convert to strings}
    Set Global Variable     ${converted currentmin is}
    KW: Type Text   ${event start time min xpath}    ${future_updated_mins}    ${semi colon text}      ${waiting duration}     ${index}     ${flag false}    ${flag true}

KW: Set event end time & end min.
    KW: Verify Element      ${event end time hr xpath}     ${waiting secs}     ${flag false}    ${flag false}    ${flag true}
    KW: Click Element       ${event end time hr xpath}   ${waiting secs}     ${flag true}    ${index}    ${flag false}    ${flag false}    ${flag true}
    KW: Type Text   ${event end time hr xpath}      ${future_updated_hr}        ${semi colon text}      ${waiting secs}     ${index}     ${flag false}    ${flag false}
    
    KW: Verify Element      ${event end time min xpath}     ${waiting secs}     ${flag false}    ${flag false}    ${flag true}
    KW: Click Element       ${event end time min xpath}   ${waiting secs}     ${flag true}    ${index}    ${flag false}    ${flag false}    ${flag true}
    KW: Type Text   ${event end time min xpath}     ${future_updated_mins}      ${semi colon text}      ${waiting secs}     ${index}     ${flag false}    ${flag false}

KW: Click on the am/pm element.
    KW: Set Config Multiple Anchors True or False       ${flag true}
    KW: Set Config Search Direction     ${Closest direction}
    KW: Click Text      ${AM text}      ${event end date text}      ${waiting secs}     ${flag false}    ${flag true}   ${flag false}

KW: Set AM/PM
    KW: Manipulate current time
    ${am_status} =	Evaluate	0 <= ${future_updated_hr} <= 12
    ${pm_status} =	Evaluate	12 <= ${future_updated_hr} <= 24
    Run Keyword If      '${pm_status}'=='True'        Run Keyword         KW: Click on the am/pm element.

KW: Pick event end date.
    [Documentation]     Do not touch this. This is final one.
    KW: Manipulate current time
    KW: Convert To String       ${future_updated_days}
    ${converted future date is}      set variable    ${convert to strings}
    Set Global Variable     ${converted future date is}

    KW: Set Config Search Direction     ${Closest direction}
    KW: Get Text    ${end date am pm drop down xpath}   ${semi colon text}      ${waiting duration}     #${flag true}
    ${the am pm of the end date picker is}      set variable    ${get text}
    Set Global Variable         ${the am pm of the end date picker is}
    
    # Run Keyword If          ${currentday} >= 1 and ${currentday} <= 15 and ${future_updated_days} <= 15           Run Keyword         KW: Select the event end date from the date picker towards top.
    # Run Keyword If          ${currentday} <= 15 and ${future_updated_days} <= 31           Run Keyword         KW: Select the event end date from the date picker towards button.
    # # Run Keyword If          ${currentday} >= 25 and ${future_updated_days} <= 31          Run Keyword         KW: Select the event end date from the date picker towards button.
    # Run Keyword If          ${currentday} >= 25 and ${future_updated_days} <= 5           Run Keyword         KW: Select the event end date from the next month date picker towards top.
    # OR
    IF  ${currentday} <= 0
    log     Date is zero
    ELSE IF     ${currentday} >= 1 and ${currentday} <= 15 and ${future_updated_days} <= 15
    Run Keyword         KW: Select the event end date from the date picker towards top.
    ELSE IF     ${currentday} <= 15 and ${future_updated_days} <= 31
    Run Keyword         KW: Select the event end date from the date picker towards button.
    # ELSE IF     ${currentday} >= 25 and ${future_updated_days} <= 31
    # Run Keyword         KW: Select the event end date from the date picker towards button.
    ELSE IF     ${currentday} >= 25 and ${future_updated_days} <= 5
    Run Keyword         KW: Select the event end date from the next month date picker towards top.
    END

KW: Entering social links.
    KW: Faker create randon url.
    KW: Click Element       ${social links website xpath}   ${waiting duration}     ${flag true}    ${index}    ${flag true}    ${flag true}    ${flag true}
    KW: Type Text           ${social links website xpath}   ${social website url}      ${EMPTY}      ${waiting duration}     ${index}     ${flag false}    ${flag true}

KW: Enter linkedin links.
    KW: Click Element       ${social links linkedin xpath}   ${waiting duration}     ${flag true}    ${index}    ${flag true}    ${flag true}    ${flag true}
    KW: Type Text           ${social links linkedin xpath}   ${linkedin url}      ${EMPTY}      ${waiting duration}     ${index}     ${flag false}    ${flag true}

KW: Enter twitter links.
    KW: Click Element       ${social links twitter xpath}   ${waiting duration}     ${flag true}    ${index}    ${flag true}    ${flag true}    ${flag true}
    KW: Type Text           ${social links twitter xpath}   ${twitter url}      ${EMPTY}      ${waiting duration}     ${index}     ${flag false}    ${flag true}

KW: Enter facebook links.
    KW: Click Element       ${social links facebook xpath}   ${waiting duration}     ${flag true}    ${index}    ${flag true}    ${flag true}    ${flag true}
    KW: Type Text           ${social links facebook xpath}   ${facebook url}      ${EMPTY}      ${waiting duration}     ${index}     ${flag false}    ${flag true}

KW: Enter instagram links.
    KW: Click Element       ${social links instagram xpath}   ${waiting duration}     ${flag true}    ${index}    ${flag true}    ${flag true}    ${flag true}
    KW: Type Text           ${social links instagram xpath}   ${instagram url}       ${EMPTY}      ${waiting duration}     ${index}     ${flag false}    ${flag true}

KW: Verify the green success alert after creating the event.
    KW: Verify Element Text     ${success alert for event creation xpath}       ${alert success new event created}      ${EMPTY}    ${waiting duration}     ${flag false}
    KW: Verify Element Text     ${success green alert xpath}                    ${alert success}                        ${EMPTY}    ${waiting duration}     ${flag false}

KW: Click to publish event.
    KW: Click Text      ${go live text}      ${this event is not live yet text}      ${waiting secs}     ${flag false}    ${flag false}   ${flag false}

KW: Assert the popup text and click on GO LIVE.
    KW: Verify Text     ${go live with event text}      ${go live with event anchor}    ${waiting secs}     ${flag false}   ${flag false}
    KW: Click Text      ${go live text}      ${go live with event anchor}      ${waiting secs}     ${flag false}    ${flag false}   ${flag false}

KW: Verify green success alert for event live.
    KW: Verify Element Text     ${success alert for event creation xpath}       ${Event has been published alert}       ${EMPTY}    ${waiting duration}     ${flag false}
    KW: Verify Element Text     ${success green alert xpath}                    ${alert success}                        ${EMPTY}    ${waiting duration}     ${flag false}
    
KW: Click to unpublish event.
    KW: Click Text      ${unpublish text}      ${go to event text}      ${waiting secs}     ${flag false}    ${flag false}   ${flag false}

KW: Assert the popup text and click on UNPUBLISH.
    KW: Verify Text     ${unpublish permission alert}      ${unpublish your current event text}    ${waiting secs}     ${flag false}   ${flag false}
    KW: Click Text      ${unpublish text}      ${CANCEL capital text}      ${waiting secs}     ${flag false}    ${flag false}   ${flag false}

KW: Verify green success alert for event unpublish.
    KW: Verify Element Text     ${success alert for event creation xpath}       ${event unpublished alert}      ${EMPTY}    ${waiting secs}     ${flag false}
    KW: Verify Element Text     ${success green alert xpath}                    ${alert success}                ${EMPTY}    ${waiting secs}     ${flag false}

KW: Copy the event url.
    KW: Get Text        ${event url on the overview module xpath}       ${Copy current url anchor}      ${waiting secs}     #${flag true}
    ${event webcommunity url}      set variable     ${get text}
    Set Global variable     ${event webcommunity url}
    
KW: Verify internal event type option displaying.
    KW: Verify Element      ${event type internal xpath}     ${waiting duration}     ${flag true}    ${flag true}  ${flag true}

KW: Verify external event type option displaying.
    KW: Verify Element      ${event type external xpath}     ${waiting duration}     ${flag true}    ${flag true}  ${flag true}

KW: Click internal event type option displaying.
    KW: Click Element       ${event type internal xpath}   ${waiting duration}     ${flag true}    ${index}    ${flag true}    ${flag true}    ${flag true}

KW: Click external event type option displaying.
    KW: Click Element       ${event type external xpath}   ${waiting duration}     ${flag true}    ${index}    ${flag true}    ${flag true}    ${flag true}

KW: Verify the radios present within the internal event.
    KW: Verify All      ${radios in internal event}     ${waiting duration}

KW: Verify the radios present within the external event.
    KW: Verify All      ${radios in external event}     ${waiting duration}

KW: Select event type randomly.
    KW: Get length      ${event type random list}
    ${length of event type lists}   set variable        ${lengths}

    KW: Evaluate        0       ${length of event type lists}       1
    ${eventtype_random_NUMBER}      set variable        ${evaluates}

    KW: Get From List       ${event type random list}       ${eventtype_random_NUMBER}
    ${The final event type value from the list is}      set variable        ${get from lists}
    Set Global Variable         ${The final event type value from the list is}

KW: Random internal radio value.
    KW: Get length      ${internal events type}
    ${length of internal radio value type lists}   set variable        ${lengths}

    KW: Evaluate        0       ${length of internal radio value type lists}       1
    ${eventtype_internal_random_NUMBER}      set variable        ${evaluates}

    KW: Get From List       ${internal events type}       ${eventtype_internal_random_NUMBER}
    ${The final internal event type value from the list is}      set variable        ${get from lists}
    Set Global Variable         ${The final internal event type value from the list is}

KW: Random external radio value.
    KW: Get length      ${external events type}
    ${length of external radio value type lists}   set variable        ${lengths}

    KW: Evaluate        0       ${length of external radio value type lists}       1
    ${eventtype_external_random_NUMBER}      set variable        ${evaluates}

    KW: Get From List       ${external events type}       ${eventtype_external_random_NUMBER}
    ${The final external event type value from the list is}      set variable        ${get from lists}
    Set Global Variable         ${The final external event type value from the list is}

KW: Choose internal random on any event type and select the radio values.
    KW: Click internal event type option displaying.
    KW: Random internal radio value.
    KW: Click Text      ${The final internal event type value from the list is}      ${EMPTY}      ${waiting secs}     ${flag false}    ${flag false}   ${flag false}

KW: Choose external random on any event type and select the radio values.
    KW: Click external event type option displaying.
    KW: Random external radio value.
    KW: Click Text      ${The final external event type value from the list is}      ${EMPTY}      ${waiting secs}     ${flag false}    ${flag false}   ${flag false}

KW: If event type is internal, pick random internal radio value else external radio value.
    KW: Select event type randomly.
    KW: Random internal radio value.
    KW: Random external radio value.
    KW: Choose internal random on any event type and select the radio values.
    KW: Choose external random on any event type and select the radio values.

    Run Keyword if      "${The final event type value from the list is}" == "Internal"      Run Keyword And Continue On Failure     KW: Choose internal random on any event type and select the radio values.
    Run Keyword if      "${The final event type value from the list is}" == "External"      Run Keyword And Continue On Failure     KW: Choose external random on any event type and select the radio values.

KW: Click on the Event End Date text, just above the date picker.
    KW: Click Text      ${event end date text}      ${EMPTY}      ${waiting secs}     ${flag false}    ${flag false}   ${flag false}