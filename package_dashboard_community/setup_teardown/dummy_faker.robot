*** Settings ***
Documentation   This setting is for creating all dummy data's for all modules.

Resource        ../setup_teardown/setup_teardown_func.robot
Resource        ../setup_teardown/dates_time.robot


*** Keywords ***
KW: Faker word.
    ${word}=      FakerLibrary.word
    Set Global Variable     ${word}

KW: Faker numeric digits.
    ${number}=   FakerLibrary.Random Number      digits=7     fix_len=True
    Set Global Variable     ${number}

KW: Faker create only special characters.
    ${only special characters}=      FakerLibrary.Password       length=12       special_chars=True      digits=False     upper_case=False     lower_case=False
    ${remove_dollar_char}=              Replace String      ${only special characters}               $     !
    ${remove_left_carly_char}=          Replace String      ${remove_dollar_char}           {     !
    ${remove_right_carly_char}=         Replace String      ${remove_left_carly_char}       }     !
    ${remove_and_char}=                 Replace String      ${remove_right_carly_char}      &     !
    ${special_characters}=         Replace String      ${remove_and_char}              @     !
    Set Global Variable         ${special_characters}

KW: Create an email id.
    KW: Manipulate current time
    ${fname}=     FakerLibrary.First Name
    ${generated email}=     set variable    ${fname}_${currentyear}_${currentmonth}_${currentday}_${currenthour}_${currentminute}_${currentsecond}@yopmail.com
    Set Global Variable      ${generated email}

KW: create first name.
    ${fname}=     FakerLibrary.First Name
    Set Global Variable     ${fname}

KW: create last name.
    ${lname}=     FakerLibrary.Last Name
    Set Global Variable     ${lname}

KW: create password greater then 8.
    ${password10}=      FakerLibrary.Password       length=12       special_chars=True      digits=True     upper_case=True     lower_case=True
    Set Global Variable         ${password10}

KW: create password lesser then 8.
    ${password7}=     FakerLibrary.Password       length=7       special_chars=True      digits=True     upper_case=True     lower_case=True
    Set Global Variable         ${password7}

KW: Faker characters less then 8.
    ${characters_7}=       FakerLibrary.Password       length=7       special_chars=False      digits=False     upper_case=True     lower_case=False
    Set Global Variable         ${characters_7}

KW: Faker characters greater then 8.
    ${characters_8}=       FakerLibrary.Password       length=8       special_chars=False      digits=False     upper_case=False     lower_case=True
    Set Global Variable         ${characters_8}

KW: Faker numeric digits greater then 8.
    ${number_8}=   FakerLibrary.Random Number      digits=8     fix_len=True
    Set Global Variable         ${number_8}

KW: Faker special char greater then 8.
    ${only_special_8}=       FakerLibrary.Password       length=10       special_chars=True      digits=False     upper_case=False     lower_case=False
    ${remove_dollar_char}=              Replace String      ${only_special_8}               $     !
    ${remove_left_carly_char}=          Replace String      ${remove_dollar_char}           {     !
    ${remove_right_carly_char}=         Replace String      ${remove_left_carly_char}       }     !
    ${remove_and_char}=                 Replace String      ${remove_right_carly_char}      &     !
    ${special_8}=         Replace String      ${remove_and_char}              @     !
    Set Global Variable         ${special_8}

KW: Faker special char less then 8.
    ${onlyspecial_7}=       FakerLibrary.Password       length=7       special_chars=True      digits=False     upper_case=False     lower_case=False
    ${remove_dollar_char}=              Replace String      ${onlyspecial_7}               $     !
    ${remove_left_carly_char}=          Replace String      ${remove_dollar_char}           {     !
    ${remove_right_carly_char}=         Replace String      ${remove_left_carly_char}       }     !
    ${remove_and_char}=                 Replace String      ${remove_right_carly_char}      &     !
    ${special_7}=         Replace String      ${remove_and_char}              @     !
    Set Global Variable         ${special_7}

KW: create organization name.
    ${organization}=        FakerLibrary.Company
    Set Global Variable         ${organization}

KW: Random domain name.
    ${domain_name}=      FakerLibrary.Domain Name
    Set Global Variable      ${domain_name}

KW: Faker create event name.
    ${eventname}=       FakerLibrary.Street Address
    Set Global Variable     ${eventname}

KW: Faker create event description.
    ${event description}=       FakerLibrary.Paragraph
    Set Global Variable     ${event description}

KW: Faker create randon url.
    ${social website url}=      FakerLibrary.url
    Set Global Variable     ${social website url}

KW: Create white space.
    ${ten_whitespace}=      ${SPACE * 10}       \ \ \ \ \ \ \ \ \ \ \
    Set Global Variable     ${ten_whitespace}

KW: Faker create info.
    ${info}=        FakerLibrary.Sentence       nb_words=6  variable_nb_words=True  ext_word_list=None
    set Global variable     ${info}

KW: Faker create designation.
    ${designation}=     FakerLibrary.Street Name
    set Global variable     ${designation}

KW: Faker create lounge name.
    ${lounge name}=     FakerLibrary.City
    set Global variable     ${lounge name}

KW: Faker create lounge topic name.
    ${topic name}=      FakerLibrary.Sentence       nb_words=6
    set Global variable     ${topic name}

KW: Faker create priority number.
    ${priority}=        FakerLibrary.Random Int	    min=1   max=3    step=1
    set Global variable     ${priority}