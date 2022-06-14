*** Settings ***
Resource        ../../../../base.robot
Documentation   Car test for schema API
Force Tags      @carrinhos

*** Variables ***
${CART_SCHEMA}           ${SCHEMAS}/carrinhos/constants/carrinhos_schema.json

*** Test Cases ***
Validate car API schema
    [Tags]    @regression
    Search All Carts
    Should Be Equal As Numbers       ${response.status_code}    200
    Validate Jsonschema From File    ${response.json()}         ${CART_SCHEMA}