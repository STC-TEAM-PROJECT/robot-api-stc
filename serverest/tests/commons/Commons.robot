***Keywords***
Create Users
    [Documentation]     Used to create users.
    [Arguments]         ${nome}     ${email}     ${password}     ${administrador}

    &{USER}                             Create Dictionary
    ...                                 nome= ${nome}
    ...                                 email=${email} 
    ...                                 password=${password}3
    ...                                 administrador=${administrador}

    Log                                 ${USER}
    Set Test Variable                   ${USER}


Get Token
    [Documentation]     Used to get a token.
    Create Users                        Phao  phao@qa.com  123  True
    Login                               phao@qa.com  123                              
    Should Be Equal As Numbers          ${response.status_code}                 200
    Should Not Be Empty                 ${response.json()["authorization"]}
    Set Test Variable                   ${TOKEN}                                ${response.json()["authorization"]}
    Log                                 ${TOKEN}
