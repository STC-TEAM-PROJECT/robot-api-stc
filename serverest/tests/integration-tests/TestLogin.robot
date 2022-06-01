*** Settings ***
Resource        ../../base.robot
Documentation   Product test for API


*** Test Cases ***
Successfully login
    [Tags]    @regression
    Login
    Should Be Equal As Strings          ${response.status_code}                    200
    Should Be Equal As Strings          ${response.json()["message"]}              Login realizado com sucesso
    Set Global Variable                 ${authorization}                           ${response.json()["authorization"]}
    Should Be Equal As Strings          ${response.json()["authorization"]}        ${authorization}