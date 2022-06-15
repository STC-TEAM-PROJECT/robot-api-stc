***Keywords***
Create Fake Data For Users
    [Documentation]     Used to implement faker data an user.
    ${Faker_Name}       FakerLibary.Name
    ${Faker_Email}      FakerLibrary.Email
    ${Faker_Password}   FakerLibary.Password

    &{USER}             Create Dictionary
    ...                 nome=${Faker_Name}
    ...                 email=${Faker_Email}
    ...                 password=${Faker_Password}
    ...                 adminstrator=True

    Log                 ${USER}
    Set Test Variable   ${USER}

Create An Users Successfully
    [Documentation]     Used to create a valid users.
    Create Fake Data For Users
    Register                            ${USER.nome}    ${USER.email}    ${USER.password}
    Should Be Equal As Numbers          ${response.status_code}                 201
    Should Be Equal As String           ${response.json()['message']}           Cadastro realizado com sucesso
    Set Test Variable                   ${USER_ID}                              ${response.json()['_id']}
    Log                                 ${USER_ID}

Get Token
    [Documentation]     Used for to get a valid token.
    Create An Users Successfully
    Login                               ${USER.email}    ${USER.password}                                                             
    Should Be Equal As Numbers          ${response.status_code}                 200
    Should Not Be Empty                 ${response.json()["authorization"]}
    Set Test Variable                   ${TOKEN}                                ${response.json()["authorization"]}
    Log                                 ${TOKEN}
