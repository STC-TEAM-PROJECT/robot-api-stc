*** Settings ***
Resource        ../../base.robot
Resource        ../integartion-tests/keywords/carrinhos/CarrinhoKW.robot
Documentation   Car test for schema API

*** Variables ***
${CAR_SCHEMA}           ${SCHEMAS}/carrinhos/carrinhos-schema.json

*** Test Cases ***
Validate car API schema
    [Tags]    @regression
    Search All Cars
    Should Be Equal As Numbers       ${response.status_code}    200
    Validate Jsonschema From File    ${response.json()}         ${CAR_SCHEMA}