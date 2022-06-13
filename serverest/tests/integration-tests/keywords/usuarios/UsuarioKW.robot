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