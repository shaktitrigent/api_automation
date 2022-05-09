*** Settings ***
Resource    ../Library/CommonResources.robot

*** Variables ***

*** Keywords ***

Start Session
    create session    url    ${base_url}    verify=True

Get all users details
    [Tags]      API
    &{req_body}=   Create Dictionary    page=2
    &{header}=    create dictionary    Content-Type=application/json
    ${response}=    GET On Session    url    api/users?${req_body}     headers=${header}
    log     ${response.status_code}
    Should Contain   '${response.status_code}'  20   Fail   Test Failed: Expected response 200, got ${response.status_code} for 'List all users details'.
    log      ${response.json()}

Create user details
    [Documentation]    This keyword create new user record.
    [Tags]      API
    &{req_body}=   Create Dictionary    name=Test user   job=Test Lead
    &{header}=    create dictionary    Content-Type=application/json
    ${response}=   POST On Session    url   api/users    json=${req_body}    headers=${header}
    log     ${response.status_code}
    Should Contain   '${response.status_code}'  20   Fail   Test Failed: Expected response 200, got ${response.status_code} for 'Create user details'.
    log      ${response.json()}
    ${user_id}    Get From Dictionary     ${response.json()}     id
    log    ${user_id}
    set suite variable     ${user_id}

Update user Details
    [Tags]      API
    ${dob}     get_random_date
    &{req_body}=   Create Dictionary    name=Updaeted user   job=Updated Lead
    &{header}=    create dictionary    Content-Type=application/json
    ${response}=   PUT On Session    url   api/users/${user_id}    json=${req_body}     headers=${header}
    log     ${response.status_code}
    Should Contain   '${response.status_code}'  20   Fail   Test Failed: Expected response 200, got ${response.status_code} for 'Update students details'.
    log      ${response.json()}

Get specific user details
     [Tags]      API
    &{header}=    create dictionary    Content-Type=application/json
    ${response}=   GET On Session    url   api/users/${user_id}    headers=${header}
    log     ${response.status_code}
    Should Contain   '${response.status_code}'  20   Fail   Test Failed: Expected response 200, got ${response.status_code} while getting user details for - ${user_id}.
    log      ${response.json()}

Delete user details
    [Tags]      API
    &{header}=    create dictionary    Content-Type=application/json
    ${response}=   DELETE On Session    url   api/users/${user_id}    headers=${header}
    log     ${response.status_code}
    Should Contain   '${response.status_code}'  20   Fail   Test Failed: Expected response 200, got ${response.status_code} for 'Delete user details'.