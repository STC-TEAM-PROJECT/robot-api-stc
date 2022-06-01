*** Keywords ***
Login
    [Documentation]        used to login.
    ${headers}=            Create Dictionary
    ...                    content-type=application/json

    Create Session         serveRest            ${URL_DEV}        verify=True
    ${response}=           POST On Session      serveRest         /login
    ...                    data={"email": "fulano@qa.com", "password": "teste"}
    ...                    headers=${headers}
    ...                    expected_status=any

    Log                    ${response}
    Set Test Variable      ${response}