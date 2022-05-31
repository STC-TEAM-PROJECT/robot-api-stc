*** Settings ***
Resource        ../../base.robot
Documentation   Product test for schema API

*** Variables ***
${PRODUCT_SCHEMA}        ${SCHEMAS}/produtos/produtos_schema.json

*** Test Cases ***
Validate products API
    [Tags]    @regression    @schema
    Search All Products
    Should Be Equal As Strings       ${response.status_code}    200
    Validate Jsonschema From File    ${response.json()}         ${PRODUCT_SCHEMA}