*** Settings ***
Documentation    POM or Variables and Keywords for Creating Booking.
Resource        ../main_setup_teardown/setup_teardown_func.robot
Resource        ../main_setup_teardown/user_agents.robot


*** Variables ***
${API CreateBooking END POINT}      /booking
${useragent}    value
${The Boolean value is}    value
${Body}    value
${Header}    value
${Body2nd}    value
${Header2}    value
${Fake_First_Name}    value
${Fake_Last_Name}    value
${Faker_Price_Value}    value
${CurrentDate}    value
${FutureDate}    value
${Faker_words}    value


*** Keywords ***
KW: Creating Booking POST Session.
    [Documentation]
    ...     Create a HTTP session to a server.
    ...     With an alias, where Robot Framework alias is to identify the session.
    ...     Including the Base url of the server
    ...     Verify HTTPS request is being made in Robot Framework.
####################################################################################
    create session      Restful_Brooker      ${API BASE URL}      verify=True
####################################################################################


KW: Request Header.
    [Documentation]
    ...     APIs require to send particular headers along with requests, typically to provide additional metadata about the operation that are performing.
    ...     Can set these up in the Headers.
    ...     Enter any key-value pairs needed and it will be send along with the request.
    KW for User Agent
####################################################################################
    ${Header}=      create dictionary
    ...         User-Agent=${useragent}
    ...         Content-Type=application/json
    ...         accept=application/json
    set global variable     ${Header}
####################################################################################


KW: POST Body with JSON Keys & Value.
    [Documentation]     Need to send body data using KEY-VALUE pairs with requests whenever need to add or update structured data.
####################################################################################
    ${Body}=        Catenate
    ...     {
    ...         "firstname" : "${Fake_First_Name}",
    ...         "lastname" : "${Fake_Last_Name}",
    ...         "totalprice" : ${Faker_Price_Value},
    ...         "depositpaid" : ${The Boolean value is},
    ...         "bookingdates" :    {   "checkin" : "${CurrentDate}",     "checkout" : "${FutureDate}" },
    ...         "additionalneeds" : "${Faker_words}"
    ...     }
    set global variable     ${Body}
####################################################################################


KW: Response of the POST Request.
    [Documentation]
    ...     The response viewer helps to ensure the correctness of API responses.
    ...     An API response consists of the body, headers, and the status code.
    ...     It organizes body and headers in different forms.
    ...     The status code and the completion time of the API call is visible.
    ...     The response also contains the HTTP specification default description.
    ...     However, API authors can also add custom message.
####################################################################################
    ${Response}=        POST On Session
    ...                 Restful_Brooker      ${API CreateBooking END POINT}
    ...                 data=${Body}
    ...                 headers=${Header}
    set global variable     ${Response}
####################################################################################


KW: Without Request Header.
    [Documentation]
    ...     APIs require to send particular headers along with requests, typically to provide additional metadata about the operation that are performing.
    ...     Can set these up in the Headers.
    ...     Enter any key-value pairs needed and it will be send along with the request.
####################################################################################
    ${Header2}=      create dictionary
    ...         Content-Type=application/json
    ...         accept=application/json
    set global variable     ${Header2}
####################################################################################


KW: Another POST Body with JSON Keys & Value.
    [Documentation]     Need to send body data using invalid KEY-VALUE pairs with requests whenever need to add or update structured data.
####################################################################################
    ${Body2nd}=        Catenate
    ...     {
    ...         "firstname" : null,
    ...         "lastname" : "${Fake_Last_Name}",
    ...         "totalprice" : ${Faker_Price_Value},
    ...         "depositpaid" : ${The Boolean value is},
    ...         "bookingdates" :    {   "checkin" : "${CurrentDate}",     "checkout" : "${FutureDate}" },
    ...         "additionalneeds" : "${Faker_words}"
    ...     }
    set global variable     ${Body2nd}
####################################################################################


KW: Response of the Invalid POST Request.
    [Documentation]
    ...     The response viewer helps to ensure the correctness of API responses.
    ...     An API response consists of the body, headers, and the status code.
    ...     It organizes body and headers in different forms.
    ...     The status code and the completion time of the API call is visible.
    ...     The response also contains the HTTP specification default description.
    ...     However, API authors can also add custom message.
####################################################################################
    ${Response_2}=       POST On Session
    ...                 Restful_Brooker      ${API CreateBooking END POINT}
    ...                 data=${Body2nd}
    ...                 headers=${Header2}
    set global variable     ${Response_2}
####################################################################################
