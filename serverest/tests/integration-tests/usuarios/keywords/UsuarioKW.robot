*** Keywords ***
Search All Users
    [Documentation]        Used to search for all existing users.
    ${headers}=            Create Dictionary
    ...                    content-type=application/json

    Create Session         serveRest            ${BASE_URL}        verify=True
    ${response}=           GET On Session       serveRest         /usuarios
    ...                    headers=${headers}
    ...                    expected_status=any

    Log                    ${response}
    Set Test Variable      ${response}

Register
    [Documentation]        Used to create/register an user.
    [Arguments]            ${Name}=${EMPTY}
    ...                    ${Email}=${EMPTY}
    ...                    ${Password}=${EMPTY}

    ${headers}=            Create Dictionary
    ...                    content-type=application/json

    ${body}=               Create Dictionary
    ...                    nome=${Name}
    ...                    email=${Email}
    ...                    password=${Password}
    ...                    administrator=True

    Create Session         serveRest            ${BASE_URL}       verify=True
    ${response}=           GET On Session       serveRest         /usuarios
    ...                    headers=${headers}
    ...                    json=${body}
    ...                    expected_status=any

    Log                    ${response}
    Set Test Variable      ${response}