*** Settings ***
Library  DateTime

    
*** Keywords ***
KW: Manipulate current time
    ${CurrentDate}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f %p
    Set Global Variable         ${CurrentDate}
    # log to Console     ${CurrentDate}

    ${CurrentDate_with_Abbriviated_month}=  Get Current Date  result_format=%b
    Set Global Variable         ${CurrentDate_with_Abbriviated_month}
    # log to Console     ${CurrentDate_with_Abbriviated_month}

    ${current is am or pm}=  Get Current Date  result_format=%p
    Set Global Variable         ${current is am or pm}
    # log to Console     ${current is am or pm}

    ${datetime} =	Convert Date  ${CurrentDate}  datetime

    # Log  ${datetime.year}
    ${currentyear}=         Set Variable        ${datetime.year}
    Set Global Variable     ${currentyear}

    # Log	 ${datetime.month}
    ${currentmonth}=        Set Variable        ${datetime.month}
    Set Global Variable     ${currentmonth}

    # Log	 ${datetime.day}
    ${currentday}=          Set Variable         ${datetime.day}
    Set Global Variable     ${currentday}

    # Log	 ${datetime.hour}
    ${currenthour}=         Set Variable         ${datetime.hour}
    Set Global Variable     ${currenthour}

    # Log	 ${datetime.minute}
    ${currentminute}=       Set Variable         ${datetime.minute}
    Set Global Variable     ${currentminute}

    # Log	 ${datetime.second}
    ${currentsecond}=       Set Variable         ${datetime.second}
    Set Global Variable     ${currentsecond}

    # Log	 ${datetime.microsecond}
    ${currentmicrosecond}=      Set Variable         ${datetime.microsecond}
    Set Global Variable     ${currentmicrosecond}

    ###################################################################################

    ${newdatetime_days} =  Add Time To Date  ${CurrentDate}  3 days
    # Log  ${newdatetime_days}
    Set Global Variable     ${newdatetime_days}

    ${newdatetime_for_10_days} =  Add Time To Date  ${CurrentDate}  10 days
    # Log  ${newdatetime_for_10_days}
    Set Global Variable     ${newdatetime_for_10_days}

    ${past date back to 7 days}=    Add Time To Date    ${CurrentDate}  -7 days
    Set Global Variable     ${past date back to 7 days}

    ${future 28 days ahead}=    Add Time To Date    ${CurrentDate}  13 days
    Set Global Variable     ${future 28 days ahead}

    ###################################################################################

    ${newdatetime_hours} =  Add Time To Date  ${CurrentDate}  2 hours
    # Log  ${newdatetime_hours}
    Set Global Variable     ${newdatetime_hours}

    ###################################################################################

    ${newdatetime_minutes} =  Add Time To Date  ${CurrentDate}  5 minutes
    # Log  ${newdatetime_minutes}
    Set Global Variable     ${newdatetime_minutes}

    ###################################################################################

    ${updated_days} =	Convert Date  ${newdatetime_days}  datetime

    ${updated_min} =	Convert Date  ${newdatetime_minutes}  datetime

    ${updated_10_days}=      Convert Date    ${newdatetime_for_10_days}       datetime

    ${updated_past_7_days}=     Convert Date    ${past date back to 7 days}     datetime

    ${updated future 28 days}=      Convert Date    ${future 28 days ahead}     datetime

    ###################################################################################
    ${future_updated_days}=     Set Variable        ${updated_days.day}
    Set Global Variable     ${future_updated_days}

    ${future_updated_10_days}=   Set Variable        ${updated_10_days.day}
    Set Global Variable     ${future_updated_10_days}

    ${past_updated_7_day_is}=   Set Variable        ${updated_past_7_days.day}
    Set Global Variable     ${past_updated_7_day_is}

    ${future_udated_28_days}=   Set variable        ${updated future 28 days.day}
    Set Global Variable     ${future_udated_28_days}
    ###################################################################################

    ${future_updated_hr}=         Set Variable        ${updated_min.hour}
    Set Global Variable     ${future_updated_hr}

    ###################################################################################

    ${future_updated_mins}=         Set Variable        ${updated_min.minute}
    Set Global Variable     ${future_updated_mins}

    ###################################################################################

    ${future_updated_year}=         Set Variable        ${updated_min.year}
    Set Global Variable     ${future_updated_year}

    ###################################################################################

    ${newdatetime_seconds} =  Add Time To Date  ${CurrentDate}  30 seconds
    # Log  ${newdatetime_seconds}
    Set Global Variable     ${newdatetime_seconds}

    ###################################################################################

    # ${new_7_days_date} =  Add Time To Date  ${updated_min}  7 days
    # Log  ${new_7_days_date}
    # Set Global Variable     ${new_7_days_date}
    # ${converted_new_date_and_time_after_adding_7}=     Convert Date        ${new_7_days_date}
    # ${now_the_7days_gape_date_is}=      Set Variable        ${converted_new_date_and_time_after_adding_7.day}
    # Set Global Variable         ${now_the_7days_gape_date_is}
    # ###################################################################################

KW: Manipulate current time with extended dates and time
    ${CurrentDate}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    Set Global Variable     ${CurrentDate}

    ${newdatetime} =  Add Time To Date  ${CurrentDate}  2 days
    # Log  ${newdatetime}
    ${newdatetime} =  Add Time To Date  ${CurrentDate}  2 hours
    # Log  ${newdatetime}
    ${newdatetime} =  Add Time To Date  ${CurrentDate}  30 minutes
    # Log  ${newdatetime}
    ${newdatetime} =  Add Time To Date  ${CurrentDate}  30 seconds
    # Log  ${newdatetime}

KW: Manipulate current time with modifications.
	 ${hour}=   Get Current Date   result_format=%H
	 ${hour}=   Convert To Integer   ${hour}
	 ${min}=   Get Current Date   result_format=%M
	 ${min}=   Convert To Integer   ${min}
	 ${minmodified}=   Evaluate   ${min}+55
	 ${hourmodified}=   Evaluate   ${hour}+2
	#  Log  ${hourmodified}
    #  Log  ${minmodified}
