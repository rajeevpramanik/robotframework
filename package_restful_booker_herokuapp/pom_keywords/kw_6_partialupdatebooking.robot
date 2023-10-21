*** Settings ***
Documentation    POM or Variables and Keywords for Partial Updating Booking.
Resource        ../main_setup_teardown/setup_teardown_func.robot
Resource        ../main_setup_teardown/user_agents.robot
Resource        ../pom_keywords/kw_2_createbooking.robot


***Variables***
${JWToken}      token=
${Reading C column data}    value
${Cell Value}    value


***Keywords***
KW: Partial Update Booking PATCH Session.
    [Documentation]
    ...     Create a HTTP session to a server.
    ...     With an alias, where Robot Framework alias is to identify the session.
    ...     Including the Base url of the server
    ...     Verify HTTPS request is being made in Robot Framework.
####################################################################################
    create session      Restful_Brooker      ${API BASE URL}      verify=True
####################################################################################

KW: Request PATCH Header.
    [Documentation]
    ...     APIs require to send particular headers along with requests, typically to provide additional metadata about the operation that are performing.
    ...     Can set these up in the Headers.
    ...     Enter any key-value pairs needed and it will be send along with the request.
    
    KW for User Agent
    KW: Fetch the C Column data according to the row count.
####################################################################################
    ${Header}=      create dictionary
    ...         User-Agent=${useragent}
    ...         Content-Type=application/json
    ...         accept=application/json
    ...         Cookie=${JWToken}${Reading C column data}
    set global variable     ${Header}
####################################################################################


KW: PATCH Body with JSON Keys & Value.
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


KW: Response of the PATCH Request.
    [Documentation]
    ...     The response viewer helps to ensure the correctness of API responses.
    ...     An API response consists of the body, headers, and the status code.
    ...     It organizes body and headers in different forms.
    ...     The status code and the completion time of the API call is visible.
    ...     The response also contains the HTTP specification default description.
    ...     However, API authors can also add custom message.
####################################################################################
    ${Response}=        PATCH On Session
    ...                 Restful_Brooker      ${API CreateBooking END POINT}/${Cell Value}
    ...                 data=${Body}
    ...                 headers=${Header}
    set global variable     ${Response}
####################################################################################