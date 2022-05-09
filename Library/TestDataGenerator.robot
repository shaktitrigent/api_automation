*** Settings ***
Documentation     Keywords for generating random test data
Resource    ../Library/CommonResources.robot

*** Keywords ***
Set Random Data
    [Arguments]    &{kwargs}
    ${small_string} =       Generate Random String    3    [LETTERS]
    ${fn} =     Evaluate    'First' + '${small_string}'
    ${mn} =        Evaluate    'Middle' + '${small_string}'
    ${ln} =      Evaluate    'Last' + '${small_string}'
    ${dob}    get_random_date
    set suite variable    ${FName}    ${fn}
    set global variable   ${MName}    ${mn}
    set global variable    ${LName}    ${ln}
    set global variable    ${DOB}    ${dob}

