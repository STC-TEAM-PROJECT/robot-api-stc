*** Keywords ***
Search All Users
    [Documentation]        Used to search for all existing users.
    ${headers}=            Create Dictionary
    ...                    content-type=application/json

    Create Session         serveRest            ${URL_DEV}        verify=True
    ${response}=           GET On Session       serveRest         /usuarios
    ...                    headers=${headers}

    Log                    ${response}
    Set Global Variable    ${response}