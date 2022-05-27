*** Settings ***
Resource        ../../base.robot
Documentation   Car test for schema API

*** Variables ***
${CART_SCHEMA}           ${SCHEMAS}/carrinhos/carrinhos-schema.json

*** Test Cases ***
Validate car API schema
    [Tags]    @regression   @schema
    Search All Carts
    Should Be Equal As Numbers       ${response.status_code}    400
    Validate Jsonschema From File    ${response.json()}         ${CART_SCHEMA}