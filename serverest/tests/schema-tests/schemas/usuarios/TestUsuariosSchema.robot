*** Settings ***
Resource        ../../../../base.robot
Documentation   User test for schema API
Force Tags      @usuarios

*** Variables ***
${USER_SCHEMA}        ${SCHEMAS}/usuarios/constants/usuarios_schema.json

*** Test Cases ***
Validate user API schema
    [Tags]    @regression
    Search All Users
    Should Be Equal As Strings       ${response.status_code}    200
    Validate Jsonschema From File    ${response.json()}         ${USER_SCHEMA}
   