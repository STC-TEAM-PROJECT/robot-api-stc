*** Keywords ***
Search All Products
    [Documentation]        Used to search for all existing products.
    ${headers}=            Create Dictionary
    ...                    content-type=application/json

    Create Session         serveRest            ${BASE_URL}       verify=True
    ${response}=           GET On Session       serveRest         /produtos
    ...                    headers=${headers}
    ...                    expected_status=any

    Log                    ${response}
    Set Test Variable      ${response}

Search Products By Id In The URL
    [Documentation]        Used to search _id in URL.
    [Arguments]            ${product_id}
    ${headers}=            Create Dictionary
    ...                    content-type=application/json

    Create Session         serveRest            ${BASE_URL}       verify=True
    ${response}=           GET On Session       serveRest         /produtos/${product_id}
    ...                    headers=${headers}
    ...                    expected_status=any

    Log                    ${response}
    Set Test Variable      ${response}

Search Products By Parameters
    [Documentation]        Used to search params in URL.
    [Arguments]            ${params}=${empty}   ${others_params}=${empty}
    ${headers}=            Create Dictionary
    ...                    content-type=application/json

    Create Session         serveRest            ${BASE_URL}       verify=True
    ${response}=           GET On Session       serveRest         /produtos
    ...                    headers=${headers}
    ...                    params=${params}&${others_params}
    ...                    expected_status=any

    Log                    ${response}
    Set Test Variable      ${response}