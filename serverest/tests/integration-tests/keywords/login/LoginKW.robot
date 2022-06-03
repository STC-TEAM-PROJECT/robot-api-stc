*** Keywords ***
Login
    [Documentation]        used to login.
    [Arguments]            ${email}     ${password}
    ${headers}=            Create Dictionary
    ...                    content-type=application/json
    ${body}=               Create Dictionary
    ...                    email=${email}
    ...                    password=${password}

    Create Session         serveRest            ${URL_DEV}        verify=True
    ${response}=           POST On Session      serveRest         /login
    ...                    json=${body}
    ...                    headers=${headers}
    ...                    expected_status=any

    Log                    ${response}
    Set Test Variable      ${response}