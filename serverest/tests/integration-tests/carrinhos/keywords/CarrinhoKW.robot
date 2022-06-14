*** Keywords ***
Search All Carts
    [Documentation]        Used to search for all existing carts.
    ${headers}=            Create Dictionary
    ...                    content-type=application/json

    Create Session         serveRest            ${BASE_URL}        verify=True
    ${response}=           GET On Session       serveRest         /carrinhos
    ...                    headers=${headers}
    ...                    expected_status=any

    Log                    ${response}
    Set Global Variable    ${response}