*** Keywords ***
Search All Cars
    [Documentation]        Used to search for all existing cars.
    ${headers}=            Create Dictionary
    ...                    content-type=application/json

    Create Session         serveRest            ${URL_DEV}        verify=True
    ${response}=           GET On Session       serveRest         /carrinhos
    ...                    headers=${headers}

    Log                    ${response}
    Set Global Variable    ${response}