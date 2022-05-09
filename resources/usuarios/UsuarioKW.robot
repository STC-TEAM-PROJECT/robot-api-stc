*** Settings ***
Documentation       Keywords for Endpoint 'usuarios'
Library            RequestsLibrary
Library            Collections
Library            FakerLibrary

*** Variable ***
# URLs
${URL_API_EXTERNAL}              https://serverest.dev
${URL_API_LOCAL}                 http://localhost:3000

#User Fulano da Silva
${NAME_FULANO_SILVA}                      Fulano da Silva 
${ADM_FULANO_SILVA}                       true
${ID_FULANO_DA_SILVA}                     0uxuPY0cbmQhpEz1

#User for new registration
${NAME_NEW_USER}                          Flu Fc
${EMAIL_NEW_USER}                         fc_tester11@qa.com
${EMAIL_NEW_USER_EXISTING}                fulano@qa.com
${PASSWORD_NEW_USER}                      senha 

#Users Changed
${NAME_USER_CHANGED}                      Fluminense Fc
${EMAIL_USER_CHANGED}                     flu_tester3@qa.com
${PASSWORD_USER_CHANGED}                  senha2

#Messages
${MSG_SUCCESS_REGISTER}                   Cadastro realizado com sucesso
${MSG_SUCCESS_CHANGED}                    Registro alterado com sucesso
${MSG_ERROR_EMAIL_REGISTERED}             Este email já está sendo usado
${MSG_SUCCESS_DELETED}                    Registro excluído com sucesso


*** Keywords ***
Connect API
    Create Session      serveRest       ${URL_API_EXTERNAL}

List all users
    ${header}=          Create Dictionary
    ...                 content-type=application/json

    ${RESPONSE}         GET On Session     serveRest       /usuarios
    ...                 headers=${header}
    Log                 ${RESPONSE.json()}
    Set Test Variable   ${RESPONSE}

List user by ID
    ${header}=          Create Dictionary
    ...                 content-type=application/json

    ${RESPONSE}         GET On Session     serveRest       /usuarios/${ID_FULANO_DA_SILVA}
    ...                 headers=${header}
    Log                 ${RESPONSE.json()}
    Set Test Variable   ${RESPONSE}

List user by NAME
    ${header}=                  Create Dictionary
    ...                         content-type=application/json

    [Arguments]         ${NAME_USER}
    ${RESPONSE}         GET On Session     serveRest       /usuarios    ?nome=${NAME_FULANO_SILVA}
    ...                 headers=${header}
    Log                 ${RESPONSE.json()}
    Set Test Variable   ${RESPONSE}

Validate User Data Fulano da Silva 
    Should Be Equal As Strings          ${RESPONSE.json()["nome"]}                  ${NAME_FULANO_SILVA}
    Should Be Equal As Strings          ${RESPONSE.json()["administrador"]}         ${ADM_FULANO_SILVA}
    Should Be Equal As Strings          ${RESPONSE.json()["_id"]}                   ${ID_FULANO_DA_SILVA}

Validate Status Code
    [Arguments]                         ${STATUS_INTENDED}
    Should Be Equal As Strings          ${RESPONSE.status_code}         ${STATUS_INTENDED}

Register User
    ${header}=                  Create Dictionary
    ...                         content-type=application/json
    [Arguments]                 ${NAME_NEW_USER}
    ...                         ${EMAIL_NEW_USER}
    ...                         ${PASSWORD_NEW_USER}
    ...                         ${ADM_FULANO_SILVA}


    ${RESPONSE}         POST On Session     serveRest       /usuarios
    ...                                     data={"nome": "${NAME_NEW_USER}","email": "${EMAIL_NEW_USER}","password": "${PASSWORD_NEW_USER}","administrador": "${ADM_FULANO_SILVA}"}
    ...                                     headers=${header}
    Log                                     ${RESPONSE.json()}
    Set Global Variable                     ${_ID}   ${response.json()['_id']}
    Log                                     ${_ID}
    Set Test Variable                       ${RESPONSE}
    Should Be Equal As Strings              ${RESPONSE.json()["message"]}       ${MSG_SUCCESS_REGISTER} 

Register User with registered email
    ${header}=                  Create Dictionary
    ...                         content-type=application/json
    [Arguments]                 ${NAME_NEW_USER}
    ...                         ${EMAIL_NEW_USER_EXISTING}
    ...                         ${PASSWORD_NEW_USER}
    ...                         ${ADM_FULANO_SILVA}


    ${RESPONSE}         POST On Session     serveRest       /usuarios
    ...                                     data={"nome": "${NAME_NEW_USER}","email": "${EMAIL_NEW_USER_EXISTING}","password": "${PASSWORD_NEW_USER}","administrador": "${ADM_FULANO_SILVA}"}
    ...                                     headers=${header}
    Log                                     ${RESPONSE.json()}
    Set Test Variable                       ${RESPONSE}
    Should Be Equal As Strings              ${RESPONSE.json()["message"]}       ${MSG_ERROR_EMAIL_REGISTERED}

Change User
    ${header}=                  Create Dictionary
    ...                         content-type=application/json
    [Arguments]                 ${NAME_USER_CHANGED}
    ...                         ${EMAIL_USER_CHANGED}
    ...                         ${PASSWORD_USER_CHANGED}
    ...                         ${ADM_FULANO_SILVA}


    ${RESPONSE}         PUT On Session     serveRest       /usuarios/${_ID}
    ...                                     data={"nome": "${NAME_USER_CHANGED}","email": "${EMAIL_USER_CHANGED}","password": "${PASSWORD_USER_CHANGED}","administrador": "${ADM_FULANO_SILVA}"}
    ...                                     headers=${header}
    Log                                     ${RESPONSE.json()}
    Log                                     ${_ID}
    Set Test Variable                       ${RESPONSE}
    Should Be Equal As Strings              ${RESPONSE.json()["message"]}       ${MSG_SUCCESS_CHANGED}

Delete User
    ${header}=          Create Dictionary
    ...                 content-type=application/json

    ${RESPONSE}         DELETE On Session     serveRest       /usuarios/${_ID}
    ...                                       headers=${header}
    Log                                       ${RESPONSE.json()}
    Log                                       ${_ID}
    Set Test Variable                         ${RESPONSE}
    Should Be Equal As Strings                ${RESPONSE.json()["message"]}       ${MSG_SUCCESS_DELETED}
