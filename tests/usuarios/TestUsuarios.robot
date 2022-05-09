
*** Settings ***
Documentation       Testes de API para Usuarios
Resource            ../../resources/usuarios/VariablesUsuarios.robot
Resource            ../../resources/usuarios/SettingsUsuarios.robot
Resource            ../../resources/usuarios/UsuarioKW.robot
Suite Setup         Connect API                                 

*** Test Case ***

CT01: List Users registered
    List all users
    Validate Status Code   200

CT02: List User by param ID
    List user by ID
    Validate Status Code   200
    Validate User Data Fulano da Silva 

CT03: List User by param NAME
    List user by NAME      ${NAME_FULANO_SILVA}
    Validate Status Code   200
    Validate User Data Fulano da Silva 

CT04: Registering users
    Register User   ${NAME_NEW_USER}    ${EMAIL_NEW_USER}   ${PASSWORD_NEW_USER}    ${ADM_FULANO_SILVA}   
    Validate Status Code   201

CT05: Registering User with registered email
    Register User with registered email     ${NAME_NEW_USER}    ${EMAIL_NEW_USER_EXISTING}   ${PASSWORD_NEW_USER}   ${ADM_FULANO_SILVA}
    Validate Status Code   400

CT06: Changing User
    Change User     ${NAME_USER_CHANGED}    ${EMAIL_USER_CHANGED}   ${PASSWORD_USER_CHANGED}    ${ADM_FULANO_SILVA}
    Validate Status Code   200

CT07: Deleting Users
    Delete User
    Validate Status Code   200        
