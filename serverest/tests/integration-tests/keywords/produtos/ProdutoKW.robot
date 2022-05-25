*** Keywords ***
Search All Products
    [Documentation]        Used to search for all existing products.
    ${headers}=            Create Dictionary
    ...                    content-type=application/json

    Create Session         serveRest            ${URL_DEV}        verify=True
    ${response}=           GET On Session       serveRest         /produtos
    ...                    headers=${headers}

    Log                    ${response}
    Set Test Variable      ${response}