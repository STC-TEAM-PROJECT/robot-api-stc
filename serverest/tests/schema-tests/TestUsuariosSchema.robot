*** Settings ***
Resource        ../../base.robot
Documentation   User test for schema API

*** Variables ***
${USER_SCHEMA}        ${SCHEMAS}/usuarios/usuarios_schema.json

*** Test Cases ***
Validate user API schema
    [Tags]    @regression    @schema
    Search All Users
    Should Be Equal As Numbers       ${response.status_code}    200
    Validate Jsonschema From File    ${response.json()}         ${USER_SCHEMA}
   