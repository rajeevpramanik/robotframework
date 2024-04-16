*** Settings ***
Documentation     Learning for loop
Library        QWeb
Suite Setup    Log    Rajeev Pramanik started the test
Suite Teardown    Log    Rajeev stopped the test

*** Variables ***
@{ITEMS}    10    11    23    1327
${five}    27646
${last}    948
@{ELEMENTS}        jddckj        33387        837387        3938938    989889    90930930-9    090390390390909
@{LIST}         1    2    3
${START}        10
@{LIST2}         a    b    c
@{NUMBERS}       ${1}    ${2}    ${5}
@{NAMES}         one     two     five

*** Keywords ***

*** Test Cases ***

Template with for loop
    # [Template]     Example keywords
    FOR    ${item}    IN    @{ITEMS}
        LOG      ${item}
    END


Template with for loop (In Range)
    FOR    ${item}    IN RANGE    10
            LOG      ${item}
    END

Example of list
    FOR    ${animal}    IN    cat    dog
        Log    ${animal}
        Log    2nd keyword
    END
    Log    Outside loop

Second Example
    FOR    ${var}    IN    one    two    ${3}    four    ${five}
    ...    kuusi    7    eight    nine    ${last}
        Log    ${var}
    END

Only upper limit
    [Documentation]    Loops over values from 0 to 9.
    FOR    ${index}    IN RANGE    10
        Log    ${index}
    END

Start and end
    [Documentation]    Loops over values from 1 to 10.
    FOR    ${index}    IN RANGE    1    11
        Log    ${index}
    END

Also step given
    [Documentation]    Loops over values 5, 15, and 25.
    FOR    ${index}    IN RANGE    5    26    10
        Log    ${index}
    END

Negative step
    [Documentation]    Loops over values 13, 3, and -7.
    FOR    ${index}    IN RANGE    13    -13    -10
        Log    ${index}
    END

Arithmetic
    [Documentation]    Arithmetic with variable.
    FOR    ${index}    IN RANGE    ${last} + 1
        Log    ${index}
    END

Float parameters
    [Documentation]    Loops over values 3.14, 4.34, and 5.54.
    FOR    ${index}    IN RANGE    3.14    6.09    1.2
        Log    ${index}
    END

Manage index manually
    ${index} =    Set Variable    -1
    FOR    ${item}    IN    @{LIST}
        ${index}=    Evaluate    ${index}+1
        Log    ${index}    
        Log    ${item}
    END

FOR-IN-ENUMERATE
    FOR    ${index}    ${item}    IN ENUMERATE    @{LIST}
        Log    ${index}    
        Log    ${item}
    END

FOR-IN-ENUMERATE with start
    FOR    ${index}    ${item}    IN ENUMERATE    @{LIST2}    start=1
        Log    ${index}    
        Log    ${item}
    END

Iterate over two lists manually
    ${length}=    Get Length    ${NUMBERS}
    FOR    ${index}    IN RANGE    ${length}
        Log Many    ${NUMBERS}[${index}]    ${NAMES}[${index}]
    END

FOR-IN-ZIP
    FOR    ${number}    ${name}    IN ZIP    ${NUMBERS}    ${NAMES}
        Log Many    ${number}    ${name}
    END

Glob pattern
    TRY
        Log     Some Keyword
    EXCEPT    ValueError: *    type=GLOB
        Log    Error Handler 1
    EXCEPT    [Ee]rror ?? occurred    ${name}    type=glob
        Log    Error Handler 2
    END